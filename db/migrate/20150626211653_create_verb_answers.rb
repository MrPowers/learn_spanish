class CreateVerbAnswers < ActiveRecord::Migration
  def change
    create_table :verb_answers do |t|
      t.text :answer
      t.integer :user_id
      t.integer :verb_question_id
      t.integer :verb_exam_id

      t.timestamps null: false
    end
  end
end
