class ExamDefinitionsWord < ActiveRecord::Base
  belongs_to :exam_definition
  belongs_to :word
end
