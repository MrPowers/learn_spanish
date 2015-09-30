class AddUserIdToConjugationQuizzes < ActiveRecord::Migration
  def change
    add_column :conjugation_quizzes, :user_id, :integer
  end
end
