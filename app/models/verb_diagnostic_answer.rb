class VerbDiagnosticAnswer < ActiveRecord::Base

  belongs_to :question

  after_create :update_is_correct

  def update_is_correct
    self.is_correct = (question.answer.downcase == user_answer.downcase)
    save!
  end

  def difficulty
    tense = question.tense
    VerbLearningPath.where(tense: tense).first.difficulty
  end

end
