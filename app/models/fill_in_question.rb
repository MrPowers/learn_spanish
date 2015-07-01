class FillInQuestion < ActiveRecord::Base

  belongs_to :verb

  def correct_answer
    Conjugate::Spanish.conjugate(:pronoun => pronoun.to_sym, :verb => verb.spanish, :tense => tense.to_sym)
  end

  def full_spanish_sentence
    spanish_sentence.gsub("_____", correct_answer)
  end

end
