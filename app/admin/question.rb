ActiveAdmin.register Question do

  permit_params :word_id, :spanish, :english, :answer, :hint, :tense

  index do
    column :spanish
    column :english
    column :answer
    column :hint
    column :tense
    column :word do |q|
      q.word
    end
    actions
  end

  form do |f|
    f.inputs "Question" do
      f.input :word, :collection => Word.all.sort_by(&:spanish), :input_html => {:autofocus => true}
      f.input :spanish
      f.input :english
      f.input :answer
      f.input :hint
      f.input :tense, as: :select, collection: Question.tenses
    end
    actions
  end

end
