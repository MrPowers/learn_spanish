class CreateExamDefinitionsWords < ActiveRecord::Migration
  def change
    create_table :exam_definitions_words do |t|
      t.integer :exam_definition_id
      t.integer :word_id

      t.timestamps null: false
    end
  end
end
