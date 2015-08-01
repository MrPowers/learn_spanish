class QuestionsController < ApplicationController

  before_filter :require_login

  def show
    @question = Question.find(params[:id])
  end

  def answer
  end

end
