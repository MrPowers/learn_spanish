class ConjugationQuiz < ActiveRecord::Base

  has_many :conjugation_answers
  alias_method :answers, :conjugation_answers

  include ExamHelpers

end

