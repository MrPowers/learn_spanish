class CreateFillInAnswers < ActiveRecord::Migration
  def change
    create_table :fill_in_answers do |t|
      t.text :answer
      t.integer :user_id
      t.integer :fill_in_question_id

      t.timestamps null: false
    end
  end
end
