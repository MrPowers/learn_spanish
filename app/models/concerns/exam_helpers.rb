module ExamHelpers

  def finished?
    answers.count >= number_of_questions
  end

  def correct_answers
    answers.where("user_answer = correct_answer").count
  end

  def incorrect_answers
    answers.where("user_answer != correct_answer").count
  end

  def percent_correct
    correct_answers.to_f / answers.count
  end

  def pretty_percent_correct
    (percent_correct * 100).round(0)
  end

  def questions_remaining
    number_of_questions - answers.count
  end

end
