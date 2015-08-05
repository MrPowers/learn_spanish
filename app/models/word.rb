class Word < ActiveRecord::Base
  has_many :exam_definitions, through: :exam_definitions_words
  has_many :exam_definitions_words
  has_many :questions

  def to_s
    spanish
  end
end
