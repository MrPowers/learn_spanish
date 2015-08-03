class QuestionFinderController < ApplicationController

  def next_question
    ed_id = session[:exam_definition_id]
    exam = Exam.where(user_id: current_user.id, exam_definition_id: ed_id).first_or_create
    skill_level = exam.skill_level
    exam_definition = ExamDefinition.find(ed_id)
    questions = exam_definition.questions

    # get the word_id that corresponds with the skill_level
    word_id = questions.map(&:word_id).uniq[skill_level]

    # randomly select a question that's below the current skill level
    question = questions.select {|q| q.word_id <= word_id}.sample

    redirect_to question
  end

  def set_exam_definition
    session[:exam_definition_id] = params[:exam_definition_id]
    redirect_to next_question_path
  end

end


#skill_level = 2

#q1 frequency 1
#q2 frequency 1
#q3 frequency 4
#q4 frequency 8
#q5 frequency 8
#q6 frequency 10
#q7 frequency 10
#q8 frequency 10

#Want to randomly select between q4 & q5
