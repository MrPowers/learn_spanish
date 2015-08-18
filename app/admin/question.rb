ActiveAdmin.register Question do

  permit_params :word_id, :spanish, :english, :answer, :hint, :tense, :admin_user_id, :checked

  index do
    column :spanish
    column :english
    column :answer
    column :hint
    column :tense
    column :created_by do |question|
      question.admin_user.username if question.admin_user
    end
    column :word do |q|
      q.word
    end
    column :checked
    column "Mark checked" do |question|
      link_to("Mark", admin_question_path(question, question: { checked: true }), remote: true, method: :patch, class: "mark-question")
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
      f.hidden_field :admin_user_id, :value => current_admin_user.id
      f.input :checked
      f.input :tense, as: :select, collection: Question.tenses
    end
    actions
  end

  controller do
    def create
      super do |format|
        redirect_to new_admin_question_path and return if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to admin_questions_path and return if resource.valid?
      end
    end
  end

end
