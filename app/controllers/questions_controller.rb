class QuestionsController < ApplicationController

  before_filter :require_login

  def show
    @question = Question.find(params[:id])
    @exam = Exam.where(user_id: current_user.id, exam_definition_id: session[:exam_definition_id]).first
  end

end
