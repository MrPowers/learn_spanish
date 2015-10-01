class NounAnswersController < ApplicationController

  def create
    @noun_answer = NounAnswer.create(noun_answer_params.merge(user_id: current_user.id))
    if @noun_answer.correct?
      redirect_to noun_quiz_question_path(id: @noun_answer.noun_quiz_id)
    else
      redirect_to noun_answer_path(@noun_answer)
    end
  end

  def show
    @noun_answer = NounAnswer.find(params[:id])
  end

  def noun_answer_params
    params.require(:noun_answer).permit(:user_answer, :noun_quiz_id, :correct_answer)
  end

end

