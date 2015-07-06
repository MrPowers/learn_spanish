class CreateVerbExamDefinitions < ActiveRecord::Migration
  def change
    create_table :verb_exam_definitions do |t|
      t.string :tense

      t.timestamps null: false
    end
  end
end
