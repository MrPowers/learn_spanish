class Exam < ActiveRecord::Base
  belongs_to :exam_definition

  def percent_complete
    r = ((skill_level.to_f / exam_definition.words.count) * 100).round(0)
    return 100 if r > 100
    r
  end
end
