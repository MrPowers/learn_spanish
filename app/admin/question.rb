ActiveAdmin.register Question do

  permit_params :word_id, :spanish, :english, :answer, :hint, :tense

  index do
    column :spanish
    column :english
    column :hint
    column :tense
    column :word do |q|
      q.word
    end
    actions
  end

end
