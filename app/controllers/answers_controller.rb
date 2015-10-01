class AnswersController < ApplicationController

  def create
    @answer = Answer.create!(answer_params)
    exam = Exam.where(user_id: current_user.id, exam_definition_id: session[:exam_definition_id]).first_or_create
    if @answer.is_correct
      exam.skill_level += 1
      exam.save!
      redirect_to next_question_path
    else
      exam.skill_level -= 1
      exam.save!
      redirect_to @answer
    end
  end

  def show
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  private

  def answer_params
    params.require(:answer).permit(:user_id, :user_answer, :question_id)
  end

end

