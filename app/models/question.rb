class Question < ActiveRecord::Base
  belongs_to :word
  belongs_to :admin_user
  auto_strip_attributes :spanish, :english, :answer, :hint, :tense

  def self.tenses
    #VerbLearningPath.all.map(&:tense)
  end

  validates :spanish, presence: true
  validate :spanish_contains_five_underscores
  validates :english, presence: true
  validates :answer, presence: true
  validates :hint, presence: true
  validates :tense, inclusion: { in: tenses }, allow_blank: true
  validates :word_id, presence: true

  def spanish_contains_five_underscores
    unless spanish.include?("_____")
      errors.add(:spanish, "Spanish question must contain five underscores")
    end
  end

  def spanish_sentence
    spanish.gsub("_____", answer)
  end
end
