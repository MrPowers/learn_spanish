class FillInQuestionsController < ApplicationController

  def random
    @question = FillInQuestion.offset(rand(FillInQuestion.count)).first
  end

  def answer
    @question = FillInQuestion.find(params[:id])
  end

end
