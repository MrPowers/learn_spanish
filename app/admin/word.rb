ActiveAdmin.register Word do

  permit_params :spanish, :english, :part_of_speech, :frequency, :commonly_oral

  index do
    column :spanish
    column :english
    column :part_of_speech
    column :frequency
    column :commonly_oral
    actions
  end

  form do |f|
    f.inputs "Word" do
      f.input :spanish
      f.input :english
      f.input :part_of_speech, as: :select, collection: Word.parts_of_speech
      f.input :frequency
      f.input :commonly_oral
    end
    actions
  end

end
