class CreateVerbExams < ActiveRecord::Migration
  def change
    create_table :verb_exams do |t|
      t.integer :user_id
      t.integer :skill_level, default: 1
      t.boolean :was_last_answer_correct, default: true
      t.integer :verb_exam_definition_id

      t.timestamps null: false
    end
  end
end
