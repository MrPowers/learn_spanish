class VerbDiagnosticExam < ActiveRecord::Base

  has_many :verb_diagnostic_answers

  def next_question
    q = relevant_questions.where(tense: tense_to_quiz).sample
    return relevant_questions.sample unless q
    q
  end

  def next_question_skill_level
    s = last_3_skill_level + rand(0..4)
    max = VerbLearningPath.maximum("difficulty")
    return max if s > max
    s.to_i
  end

  def last_3_skill_level
    last_n_skill_level(3)
  end

  def last_n_skill_level(n)
    answers = verb_diagnostic_answers.order("created_at ASC").last(3).select {|a| a.is_correct == true}
    return 0 if answers.empty?
    arr = answers.map(&:difficulty)
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end

  def tense_to_quiz
    VerbLearningPath.where(difficulty: next_question_skill_level).first.tense
  end

  def relevant_questions
    @relevant_questions ||= Question.where("word_id in (?)", word_ids)
  end

  def word_ids
    @word_ids ||= Word.where("spanish in (?)", words).map(&:id)
  end

  def words
    ["ser", "estar", "ir", "poder", "tener"]
  end

  def total_questions
    20
  end

  def number_of_questions_remaining
    total_questions - verb_diagnostic_answers.count
  end

  def finished?
    number_of_questions_remaining <= 0
  end

  def pretty_skill_level
    (last_10_skill_level / VerbLearningPath.count * 100).round(1)
  end

  def perfection?
    verb_diagnostic_answers.all? {|a| a.is_correct == true}
  end

  ### For the view page ###

  def last_10_skill_level
    last_n_skill_level(10)
  end

  def step_mastered?(learning_path)
    s = last_10_skill_level
    learning_path.difficulty < s.to_i
  end

  def steps_mastered
    s = last_10_skill_level
    v = VerbLearningPath.where("difficulty < ?", s.to_i)
    v.map(&:tense)
  end

  def next_step
    s = last_10_skill_level
    v = VerbLearningPath.where("difficulty = ?", s.to_i).first
    v.tense
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
