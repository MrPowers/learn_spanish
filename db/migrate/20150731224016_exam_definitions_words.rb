class ExamDefinitionsWords < ActiveRecord::Migration
  def change
    create_table :exam_definitions_words, :id => false do |t|
      t.integer :exam_definition_id
      t.integer :word_id
    end
  end
end
