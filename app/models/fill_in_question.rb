class FillInQuestion < ActiveRecord::Base

  def correct_answer
    Conjugate::Spanish.conjugate(:pronoun => pronoun.to_sym, :verb => verb, :tense => tense.to_sym)
  end

  def full_spanish_sentence
    spanish_sentence.gsub("_____", correct_answer)
  end

end
