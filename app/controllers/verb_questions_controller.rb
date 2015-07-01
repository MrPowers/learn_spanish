class VerbQuestionsController < ApplicationController

  def show
    @question = VerbQuestion.find(params[:id])
  end

  def random
    @question = VerbQuestion.offset(rand(VerbQuestion.count)).first
    redirect_to action: "show", id: @question.id
  end

  def answer
    @question = VerbQuestion.find(params[:id])
  end

end
