class CreateVerbDiagnosticAnswers < ActiveRecord::Migration
  def change
    create_table :verb_diagnostic_answers do |t|
      t.integer :question_id
      t.text :user_answer
      t.boolean :is_correct
      t.integer :user_id
      t.integer :verb_diagnostic_exam_id

      t.timestamps null: false
    end
  end
end
