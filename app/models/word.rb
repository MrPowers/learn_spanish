class Word < ActiveRecord::Base
  has_many :exam_definitions, through: :exam_definitions_words
  has_many :exam_definitions_words
  has_many :questions
  auto_strip_attributes :spanish, :english, :part_of_speech, :frequency

  def self.parts_of_speech
    ["prep", "conj", "art", "v", "pron", "adv", "adj", "nf", "nm", "num", "nmf", "nm/f", "nc", "aj", "interj", "n"].sort
  end

  validates :spanish, presence: true
  validates :english, presence: true
  validates :part_of_speech, presence: true
  validates :part_of_speech, inclusion: { in: parts_of_speech }
  validates :frequency, presence: true, uniqueness: true

  def to_s
    spanish
  end

end
