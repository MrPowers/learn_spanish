class CreateConjugationAnswers < ActiveRecord::Migration
  def change
    create_table :conjugation_answers do |t|
      t.integer :conjugation_quiz_id
      t.string :user_answer
      t.string :correct_answer
      t.string :tense
      t.string :pronoun

      t.timestamps null: false
    end
  end
end
