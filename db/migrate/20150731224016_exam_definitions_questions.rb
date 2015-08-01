class ExamDefinitionsQuestions < ActiveRecord::Migration
  def change
    create_table :exam_definitions_questions, :id => false do |t|
      t.integer :exam_definition_id
      t.integer :question_id
    end
  end
end
