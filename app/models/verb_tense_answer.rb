class VerbTenseAnswer < ActiveRecord::Base

  belongs_to :question
  belongs_to :verb_tense_exam

  after_create :update_is_correct

  def update_is_correct
    self.is_correct = (question.answer.downcase == user_answer.downcase)
    save!
  end

end
