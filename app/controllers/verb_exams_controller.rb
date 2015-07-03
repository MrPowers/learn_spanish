class VerbExamsController < ApplicationController

  before_filter :require_login

  def next_question
    verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
    redirect_to verb_question_path(verb_exam.next_question)
  end

end

