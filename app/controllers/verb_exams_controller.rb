class VerbExamsController < ApplicationController

  before_filter :require_login

  def next_question
    verb_exam_definition = VerbExamDefinition.where(tense: params[:tense]).first
    verb_exam = VerbExam.where(user_id: current_user.id, verb_exam_definition_id: verb_exam_definition.id).first_or_create
    redirect_to verb_question_path(tense: params[:tense], id: verb_exam.next_question)
  end

end

