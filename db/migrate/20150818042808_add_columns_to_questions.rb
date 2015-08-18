class AddColumnsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :admin_user_id, :integer
    add_column :questions, :checked, :boolean
  end
end
