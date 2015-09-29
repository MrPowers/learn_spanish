class CreateConjugationQuizzes < ActiveRecord::Migration
  def change
    create_table :conjugation_quizzes do |t|
      t.string :tense
      t.integer :number_of_questions
      t.integer :number_of_verbs

      t.timestamps null: false
    end
  end
end
