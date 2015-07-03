class VerbExam < ActiveRecord::Base

  def percent_complete
    r = ((skill_level - 1).to_f / total_question_count * 100).round(0)
    return 100 if r > 100
    r
  end

  def next_question
    VerbQuestion.joins(:verb).where(verbs: {frequency_rank: next_question_frequency}).first
  end

  private

  def next_question_frequency
    return 1 if skill_level <= 1
    return rand(1..total_question_count) if skill_level >= total_question_count
    was_last_answer_correct ? skill_level : rand(1..skill_level)
  end

  def total_question_count
    VerbQuestion.count
  end

end
