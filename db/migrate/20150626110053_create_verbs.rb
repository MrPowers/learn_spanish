class CreateVerbs < ActiveRecord::Migration
  def change
    create_table :verbs do |t|
      t.integer :frequency_rank
      t.string :spanish
      t.string :english

      t.timestamps null: false
    end
  end
end
