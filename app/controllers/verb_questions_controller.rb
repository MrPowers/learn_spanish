class VerbQuestionsController < ApplicationController

  def show
    @question = VerbQuestion.find(params[:id])
    @verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
  end

  def answer
    @question = VerbQuestion.find(params[:id])
    @verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
  end

end
