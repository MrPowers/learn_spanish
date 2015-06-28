class CreateFillInQuestions < ActiveRecord::Migration
  def change
    create_table :fill_in_questions do |t|
      t.string :pronoun
      t.string :verb
      t.string :tense
      t.text :spanish_sentence
      t.text :english_sentence

      t.timestamps null: false
    end
  end
end
