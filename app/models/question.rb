class Question < ActiveRecord::Base
  belongs_to :word

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
