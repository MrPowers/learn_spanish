class ExamsQuestions < ActiveRecord::Migration
  def change
    create_table :exams_questions, :id => false do |t|
      t.integer :exam_id
      t.integer :question_id
    end
  end
end
