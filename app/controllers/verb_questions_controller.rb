class VerbQuestionsController < ApplicationController

  def show
    @question = VerbQuestion.find(params[:id])
    @skill_level = VerbSkillLevel.where(user_id: current_user.id).first
  end

  def random
    @question = VerbQuestion.offset(rand(VerbQuestion.count)).first
    redirect_to action: "show", id: @question.id
  end

  def answer
    @question = VerbQuestion.find(params[:id])
    @skill_level = VerbSkillLevel.where(user_id: current_user.id).first
  end

end
