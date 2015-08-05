class Exam < ActiveRecord::Base
  belongs_to :exam_definition

  before_save :set_skill_level

  def set_skill_level
    skill_level = 0 if skill_level < 0
  end
end
