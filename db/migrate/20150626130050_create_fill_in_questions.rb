class CreateFillInQuestions < ActiveRecord::Migration
  def change
    create_table :fill_in_questions do |t|
      t.string :pronoun
      t.string :verb
      t.string :tense
      t.text :sentence

      t.timestamps null: false
    end
  end
end
