class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :spanish
      t.string :english
      t.string :part_of_speech
      t.integer :frequency
      t.boolean :commonly_oral

      t.timestamps null: false
    end
  end
end
