class ExamDefinition < ActiveRecord::Base
  has_many :words, through: :exam_definitions_words
  has_many :exam_definitions_words
  auto_strip_attributes :exam_name

  validates :exam_name, presence: true

  def exam_percent_complete(current_user)
    exam = Exam.where(exam_definition_id: id, user_id: current_user.id).first
    return 0 unless exam
    exam.percent_complete
  end

  def random_question
    words.sample.questions.sample
  end

  def word_by_index(index)
    ordered_words[index]
  end

  def ordered_words
    words.order("frequency asc")
  end

  def to_s
    exam_name
  end
end
