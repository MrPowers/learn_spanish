class FillInAnswersController < ApplicationController

  def create
    @answer = FillInAnswer.create!(answer_params)
    redirect_to fill_in_question_answer_path(answer_params[:fill_in_question_id])
  end

  private

  def answer_params
    params.require(:fill_in_answer).permit(:user_id, :answer, :fill_in_question_id)
  end

end

