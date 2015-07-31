class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :spanish
      t.text :english
      t.text :answer
      t.text :hint
      t.string :tense
      t.integer :word_id

      t.timestamps null: false
    end
  end
end
