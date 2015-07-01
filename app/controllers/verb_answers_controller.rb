class VerbAnswersController < ApplicationController

  def create
    @answer = VerbAnswer.create!(answer_params)
    update_level(@answer.verb_question)
    redirect_to verb_question_answer_path(answer_params[:verb_question_id])
  end

  private

  def update_level(verb_question)
    level = VerbSkillLevel.where(user_id: current_user.id).first_or_create
    last_answer_correct = (answer_params[:answer] == verb_question.correct_answer)
    if last_answer_correct
      level.current_level += 1
    else
      if level.current_level > 1 # don't want the current_level to go below 1
        level.current_level -= 1
      end
    end
    level.was_last_answer_correct = last_answer_correct
    level.save
  end

  def answer_params
    params.require(:verb_answer).permit(:user_id, :answer, :verb_question_id)
  end

end

