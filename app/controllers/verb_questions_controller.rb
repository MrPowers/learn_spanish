class VerbQuestionsController < ApplicationController

  def show
    @question = VerbQuestion.find(params[:id])
    @verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
    @percent_complete = (@verb_exam.skill_level.to_f / VerbQuestion.count * 100).round(0)
  end

  def next_question
    # this will break when the user gets to the highest skill level
    # (it will be looking for the 101th verb when it doesn't exist)
    verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
    rank = verb_exam.was_last_answer_correct ? verb_exam.skill_level : rand(1..(verb_exam.skill_level - 1))
    verb = Verb.where(frequency_rank: rank).first
    question = VerbQuestion.where(verb_id: verb.id).first
    redirect_to action: "show", id: question.id
  end

  def answer
    @question = VerbQuestion.find(params[:id])
    @verb_exam = VerbExam.where(user_id: current_user.id).first_or_create
  end

end
