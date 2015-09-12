class CreateVerbLearningPaths < ActiveRecord::Migration
  def change
    create_table :verb_learning_paths do |t|
      t.integer :difficulty
      t.string :tense

      t.timestamps null: false
    end
  end
end
