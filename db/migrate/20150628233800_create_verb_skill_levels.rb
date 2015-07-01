class CreateVerbSkillLevels < ActiveRecord::Migration
  def change
    create_table :verb_skill_levels do |t|
      t.integer :user_id
      t.integer :current_level, default: 1
      t.boolean :was_last_answer_correct, default: true

      t.timestamps null: false
    end
  end
end
