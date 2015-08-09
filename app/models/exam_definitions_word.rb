class ExamDefinitionsWord < ActiveRecord::Base
  belongs_to :exam_definition
  belongs_to :word

  validates :exam_definition_id, uniqueness: { scope: :word_id }
end
