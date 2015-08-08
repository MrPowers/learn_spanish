ActiveAdmin.register ExamDefinition do

  permit_params :exam_name

  index do
    column :exam_name
    actions
  end

end
