class VerbAnswersController < ApplicationController

  def create
    @answer = VerbAnswer.create!(answer_params)
    update_level(@answer.verb_question)
    redirect_to verb_question_answer_path(answer_params[:verb_question_id])
  end

  private

  def update_level(verb_question)
    # this code is wrong because we don't want the level to go above the maximum level
    exam = VerbExam.where(user_id: current_user.id).first_or_create
    last_answer_correct = (answer_params[:answer] == verb_question.correct_answer)
    if last_answer_correct
      exam.skill_level += 1
    else
      if exam.skill_level > 1 # don't want the skill_level to go below 1
        exam.skill_level -= 1
      end
    end
    exam.was_last_answer_correct = last_answer_correct
    exam.save
  end

  def answer_params
    params.require(:verb_answer).permit(:user_id, :answer, :verb_question_id)
  end

end

