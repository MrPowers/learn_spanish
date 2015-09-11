class CreateVerbDiagnosticExams < ActiveRecord::Migration
  def change
    create_table :verb_diagnostic_exams do |t|
      t.integer :user_id
      t.float :skill_level, default: 0

      t.timestamps null: false
    end
  end
end
