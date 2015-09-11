class VerbDiagnosticExam < ActiveRecord::Base

  def next_question
    word = Word.where(spanish: words.sample).first
    word.questions.where(tense: tense_to_quiz).sample
  end

  def tense_to_quiz
    tenses[skill_level]
  end

  def tenses
    [
      "present",
      "preterite",
      "imperfect",
      "conditional",
      "future",
      "imperative"
    ]
  end

  def words
    ["ser", "estar", "tener"]
  end

end
