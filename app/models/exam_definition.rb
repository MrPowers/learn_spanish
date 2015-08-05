class ExamDefinition < ActiveRecord::Base
  has_and_belongs_to_many :words

  def random_question
    words.sample.questions.sample
  end

  def word_by_index(index)
    ordered_words[index]
  end

  def ordered_words
    words.order("frequency asc")
  end
end
