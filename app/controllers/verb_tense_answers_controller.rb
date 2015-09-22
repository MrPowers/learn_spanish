class VerbTenseAnswersController < ApplicationController

  before_filter :require_login

  def create
    @verb_tense_answer = VerbTenseAnswer.create!(verb_tense_answer_params)
    if @verb_tense_answer.is_correct
      redirect_to next_verb_tense_question_path(tense: @verb_tense_answer.question.tense, exam_id: @verb_tense_answer.verb_tense_exam.id)
    else
      redirect_to @verb_tense_answer
    end
  end

  def show
    @verb_tense_answer = VerbTenseAnswer.find(params[:id])
    @question = @verb_tense_answer.question
  end

  private

  def verb_tense_answer_params
    params.require(:verb_tense_answer).permit(:user_id, :user_answer, :question_id, :verb_tense_exam_id)
  end

end

