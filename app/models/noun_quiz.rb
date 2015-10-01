class NounQuiz < ActiveRecord::Base

  has_many :noun_answers
  alias_method :answers, :noun_answers

  include ExamHelpers

end
