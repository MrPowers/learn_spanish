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

  validates :spanish, presence: true
  validates :english, presence: true
  validates :part_of_speech, presence: true
  validates :part_of_speech, inclusion: { in: parts_of_speech }
  validates :frequency, presence: true

  def to_s
    spanish
  end

end
