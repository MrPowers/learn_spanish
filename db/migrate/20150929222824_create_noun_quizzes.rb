class CreateNounQuizzes < ActiveRecord::Migration
  def change
    create_table :noun_quizzes do |t|
      t.integer :number_of_questions
      t.integer :number_of_nouns
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
