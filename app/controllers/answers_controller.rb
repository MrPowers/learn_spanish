class AnswersController < ApplicationController

  before_filter :require_login

  def create
    @answer = Answer.create!(answer_params)
    redirect_to @answer
  end

  def show
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  private

  def answer_params
    params.require(:answer).permit(:user_id, :user_answer, :question_id)
  end

end

