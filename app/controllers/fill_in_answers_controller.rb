class FillInAnswersController < ApplicationController

  def create
    @answer = FillInAnswer.create!(answer_params)
    update_level(@answer.fill_in_question)
    redirect_to fill_in_question_answer_path(answer_params[:fill_in_question_id])
  end

  private

  def update_level(fill_in_question)
    level = FillInLevel.where(user_id: current_user.id).first_or_create
    last_answer_correct = (answer_params[:answer] == fill_in_question.correct_answer)
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
    params.require(:fill_in_answer).permit(:user_id, :answer, :fill_in_question_id)
  end

end

