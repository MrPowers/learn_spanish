class QuestionFinderController < ApplicationController

  def next_question
    ed_id = session[:exam_definition_id]
    exam = Exam.where(user_id: current_user.id, exam_definition_id: ed_id).first_or_create
    skill_level = exam.skill_level
    exam_definition = ExamDefinition.find(ed_id)
    questions = exam_definition.questions

    # get all unique words in the quiz
    # move to ExamDefinition model w/ a many_to_many relationship
    unique_words = questions.map(&:word_id).uniq

    # get the word_id that corresponds with the skill_level
    # move to ExamDefinition#find_word_by_skill(skill_level) => word
    word_id = unique_words[skill_level]

    # randomly select a question that's below the current skill level
    # Word#find_random_question(word) #= question
    question = questions.select {|q| q.word_id <= word_id}.sample

    redirect_to question
  end

  def set_exam_definition
    session[:exam_definition_id] = params[:exam_definition_id]
    redirect_to next_question_path
  end

end


# an exam_definition has a bunch of words
# each word has a bunch of questions

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
