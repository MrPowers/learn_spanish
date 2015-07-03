class VerbExamsController < ApplicationController

  def next_question
    # this will break when the user gets to the highest skill level
    # (it will be looking for the 101th verb when it doesn't exist)
    verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
    redirect_to verb_question_path(verb_exam.next_question)
  end

end

