class Question < ActiveRecord::Base
  belongs_to :word

  def self.tenses
    [
      "present",
      "preterite",
      "imperfect"
    ]
  end

  validates :tense, inclusion: { in: tenses }, allow_blank: true

  validate :spanish_contains_five_underscores

  def spanish_contains_five_underscores
    unless spanish.include?("_____")
      errors.add(:spanish, "Spanish question must contain five underscores")
    end
  end

  def spanish_sentence
    spanish.gsub("_____", answer)
  end
end
