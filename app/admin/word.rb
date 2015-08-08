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

end
