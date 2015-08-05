class QuestionFinderController < ApplicationController

  def next_question
    exam = Exam.where(user_id: current_user.id, exam_definition_id: session[:exam_definition_id]).first_or_create
    ed = exam.exam_definition
    word = ed.word_by_index(exam.skill_level)
    if word.nil?
      question = ed.random_question
    else
      question = word.questions.sample
    end

    # choose a random question if the word
    # doesn't have any associated questions
    while question.nil?
      question = ed.random_question
    end

    redirect_to question
  end

  def set_exam_definition
    session[:exam_definition_id] = params[:exam_definition_id]
    redirect_to next_question_path
  end

end

