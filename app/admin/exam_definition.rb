ActiveAdmin.register ExamDefinition do

  permit_params :exam_name, :position

  index do
    column :exam_name
    column :position
    actions
  end

end
