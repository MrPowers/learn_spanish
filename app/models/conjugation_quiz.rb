class ConjugationQuiz < ActiveRecord::Base

  has_many :conjugation_answers

  def finished?
    conjugation_answers.count >= number_of_questions
  end

  def correct_answers
    conjugation_answers.where("user_answer = correct_answer").count
  end

  def incorrect_answers
    conjugation_answers.where("user_answer != correct_answer").count
  end

  def percent_correct
    correct_answers.to_f / conjugation_answers.count
  end

  def pretty_percent_correct
    (percent_correct * 100).round(0)
  end

end

