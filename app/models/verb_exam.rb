class VerbExam < ActiveRecord::Base

  belongs_to :verb_exam_definition

  def percent_complete
    r = ((skill_level - 1).to_f / total_verb_count * 100).round(0)
    return 100 if r > 100
    r
  end

  def next_question
    VerbQuestion.joins(:verb).where(verbs: {frequency_rank: next_question_frequency}).sample
  end

  private

  def next_question_frequency
    return 1 if skill_level <= 1
    return rand(1..total_verb_count) if skill_level >= total_verb_count
    was_last_answer_correct ? skill_level : rand(1..skill_level)
  end

  def total_verb_count
    Verb.count
  end

end
