class NounQuiz < ActiveRecord::Base

  has_many :noun_answers

  def finished?
    noun_answers.count >= number_of_questions
  end

end
