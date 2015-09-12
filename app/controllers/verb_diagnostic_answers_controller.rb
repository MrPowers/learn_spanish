class VerbDiagnosticAnswersController < ApplicationController

  before_filter :require_login

  def create
    @verb_diagnostic_answer = VerbDiagnosticAnswer.new(verb_diagnostic_answer_params)
    @verb_diagnostic_answer.verb_diagnostic_exam_id = session[:verb_diagnostic_exam_id]
    @verb_diagnostic_answer.save!
    if @verb_diagnostic_answer.is_correct
      redirect_to verb_next_question_path
    else
      redirect_to @verb_diagnostic_answer
    end
  end

  def show
    @verb_diagnostic_answer = VerbDiagnosticAnswer.find(params[:id])
    @question = @verb_diagnostic_answer.question
  end

  private

  def verb_diagnostic_answer_params
    params.require(:verb_diagnostic_answer).permit(:user_id, :user_answer, :question_id)
  end

end

