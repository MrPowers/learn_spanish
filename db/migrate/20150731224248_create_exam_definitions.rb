class CreateExamDefinitions < ActiveRecord::Migration
  def change
    create_table :exam_definitions do |t|
      t.text :exam_name
      t.text :query

      t.timestamps null: false
    end
  end
end
