class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :user_id
      t.integer :exam_definition_id
      t.float :skill_level

      t.timestamps null: false
    end
  end
end
