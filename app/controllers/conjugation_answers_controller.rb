class ConjugationAnswersController < ApplicationController

  before_filter :require_login

  def create
    @conjugation_answer = ConjugationAnswer.create(conjugation_answer_params)
    if @conjugation_answer.correct?
      redirect_to conjugation_quiz_question_path(id: @conjugation_answer.conjugation_quiz_id)
    else
      redirect_to conjugation_answer_path(@conjugation_answer)
    end
  end

  def show
    @conjugation_answer = ConjugationAnswer.find(params[:id])
  end

  def conjugation_answer_params
    params.require(:conjugation_answer).permit(:user_answer, :conjugation_quiz_id, :correct_answer, :tense, :pronoun)
  end

end
