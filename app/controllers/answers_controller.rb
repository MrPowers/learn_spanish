class AnswersController < ApplicationController

  before_filter :require_login

  def create
    @answer = Answer.create!(answer_params)
    redirect_to root_path
  end

  private

  def answer_params
    params.require(:answer).permit(:user_id, :user_answer, :question_id)
  end

end

