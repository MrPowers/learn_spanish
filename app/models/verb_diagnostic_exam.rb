class VerbDiagnosticExam < ActiveRecord::Base

  has_many :verb_diagnostic_answers

  def next_question
    question = nil
    until question
      word = Word.where(spanish: words.sample).first
      question = word.questions.where(tense: tense_to_quiz).sample
    end
    question
  end

  def next_question_skill_level
    s = last_3_skill_level + rand(0..2)
    max = VerbLearningPath.maximum("difficulty")
    return max if s > max
    s.to_i
  end

  def last_3_skill_level
    answers = verb_diagnostic_answers.where(is_correct: true)
    return 0 if answers.empty?
    arr = answers.order("created_at ASC").last(3).map(&:difficulty)
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end

  def tense_to_quiz
    VerbLearningPath.where(difficulty: next_question_skill_level).first.tense
  end

  def words
    #["ser", "estar", "hacer"]
    ["ser", "estar", "tener"]
  end

  def total_questions
    20
  end

  def number_of_questions_remaining
    total_questions - verb_diagnostic_answers.count
  end

  #Ser
  #Estar
  #Poder
  #Tener
  #Hacer
  #Decir
  #Ir
  #Ver
  #Dar
  #Saber
  #Querer

end
