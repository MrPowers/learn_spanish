class AddUserIdToConjugationAnswers < ActiveRecord::Migration
  def change
    add_column :conjugation_answers, :user_id, :integer
  end
end
