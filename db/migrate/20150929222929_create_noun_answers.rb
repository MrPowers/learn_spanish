class CreateNounAnswers < ActiveRecord::Migration
  def change
    create_table :noun_answers do |t|
      t.integer :noun_quiz_id
      t.string :user_answer
      t.string :correct_answer
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
