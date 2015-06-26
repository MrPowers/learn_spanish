class FillInQuestion < ActiveRecord::Base

  def correct_answer
    Conjugate::Spanish.conjugate(:pronoun => pronoun.to_sym, :verb => verb, :tense => tense.to_sym)
  end

end
