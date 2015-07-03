class VerbQuestionsController < ApplicationController

  before_filter :require_login

  def show
    @question = VerbQuestion.find(params[:id])
    @verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
  end

  def answer
    @question = VerbQuestion.find(params[:id])
    @answer = VerbAnswer.where(user_id: current_user.id, verb_question_id: @question.id).order(:created_at).last
    @verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
  end

end
