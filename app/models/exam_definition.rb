class ExamDefinition < ActiveRecord::Base
  has_many :words, through: :exam_definitions_words
  has_many :exam_definitions_words

  def random_question
    words.sample.questions.sample
  end

  def word_by_index(index)
    ordered_words[index]
  end

  def ordered_words
    words.order("frequency asc")
  end

  def to_s
    exam_name
  end
end
