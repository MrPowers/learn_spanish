class Word < ActiveRecord::Base
  has_many :exam_definitions, through: :exam_definitions_words
  has_many :exam_definitions_words
  has_many :questions

  def self.parts_of_speech
    [
      "art",
      "prep",
      "conj",
      "v",
      "pron",
      "adv",
      "adj",
      "nf",
      "nm",
      "num"
    ]
  end

  def to_s
    spanish
  end

end
