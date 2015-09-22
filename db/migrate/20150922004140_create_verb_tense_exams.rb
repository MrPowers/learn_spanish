class CreateVerbTenseExams < ActiveRecord::Migration
  def change
    create_table :verb_tense_exams do |t|
      t.integer :user_id
      t.string :tense

      t.timestamps null: false
    end
  end
end
