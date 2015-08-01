class QuestionFinderController < ApplicationController

  def next_question
    redirect_to root_path
  end

  def set_exam_definition
    session[:exam_definition_id] = params[:exam_definition_id]
    redirect_to next_question_path
  end

end


