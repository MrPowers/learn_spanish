class VerbDiagnosticExamsController < ApplicationController

  before_filter :require_login

  def welcome
  end

  def start_exam
    exam = VerbDiagnosticExam.create(user_id: current_user.id)
    session[:verb_diagnostic_exam_id] = exam.id
    redirect_to verb_next_question_path(exam.next_question)
  end

  def next_question
    exam = VerbDiagnosticExam.find(session[:verb_diagnostic_exam_id])
    redirect_to verb_question_path(exam.next_question)
  end

  def question
    @exam = VerbDiagnosticExam.find(session[:verb_diagnostic_exam_id])
    @question = Question.find(params[:id])
  end

  def finished_exam
    @exam = VerbDiagnosticExam.find(session[:verb_diagnostic_exam_id])
  end

end

