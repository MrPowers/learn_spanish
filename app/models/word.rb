class Word < ActiveRecord::Base
  has_and_belongs_to_many :exam_definitions
  has_many :questions

  def to_s
    spanish
  end
end
