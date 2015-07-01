class VerbQuestionsController < ApplicationController

  def show
    @question = VerbQuestion.find(params[:id])
    @skill_level = VerbSkillLevel.where(user_id: current_user.id).first
    @percent_complete = (@skill_level.current_level.to_f / VerbQuestion.count * 100).round(0)
  end

  def next_question
    # this will break when the user gets to the highest skill level
    # (it will be looking for the 101th verb when it doesn't exist)
    skill_level = VerbSkillLevel.where(user_id: current_user.id).first
    rank = skill_level.was_last_answer_correct ? skill_level.current_level : rand(1..(skill_level.current_level - 1))
    verb = Verb.where(frequency_rank: rank).first
    question = VerbQuestion.where(verb_id: verb.id).first
    redirect_to action: "show", id: question.id
  end

  def answer
    @question = VerbQuestion.find(params[:id])
    @skill_level = VerbSkillLevel.where(user_id: current_user.id).first
  end

end
