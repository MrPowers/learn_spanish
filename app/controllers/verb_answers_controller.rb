class VerbAnswersController < ApplicationController

  def create
    @answer = VerbAnswer.create!(answer_params)
    update_level
    redirect_to redirect_path, :flash => flash_message
  end

  private

  def redirect_path
    if was_last_answer_correct?
      next_question_path
    else
      verb_question_answer_path(@answer.verb_question)
    end
  end

  def flash_message
    if was_last_answer_correct?
      { :success => "Correct!" }
    else
      { :error => "Incorrect :(" }
    end
  end

  def update_level
    exam = VerbExam.where(user_id: current_user.id).first_or_create
    if was_last_answer_correct?
      exam.skill_level += 1
    else
      exam.skill_level -= 1
    end
    exam.was_last_answer_correct = was_last_answer_correct?
    exam.save
  end

  def was_last_answer_correct?
    @answer.answer == @answer.verb_question.correct_answer
  end

  def answer_params
    params.require(:verb_answer).permit(:user_id, :answer, :verb_question_id)
  end

end

