class Question < ActiveRecord::Base
  belongs_to :word

  def spanish_sentence
    spanish.gsub("_____", answer)
  end
end
