class FillInQuestionsController < ApplicationController

  def show
    @question = FillInQuestion.find(params[:id])
  end

  def random
    @question = FillInQuestion.offset(rand(FillInQuestion.count)).first
    redirect_to action: "show", id: @question.id
  end

  def answer
    @question = FillInQuestion.find(params[:id])
  end

end
