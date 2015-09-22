class VerbTenseExam < ActiveRecord::Base

  has_many :verb_tense_answers

  def pretty_skill_level
  end

  def next_question(tense)
    Question.where(tense: tense).sample
  end

  def total_questions
    20
  end

  def number_of_questions_remaining
    total_questions - verb_tense_answers.count
  end

  def finished?
    number_of_questions_remaining <= 0
  end

end
