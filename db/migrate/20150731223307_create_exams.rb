class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :user_id
      t.text :exam_name
      t.float :skill_level

      t.timestamps null: false
    end
  end
end
