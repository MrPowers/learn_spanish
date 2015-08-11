class AddPositionToExamDefinition < ActiveRecord::Migration
  def change
    add_column :exam_definitions, :position, :integer
  end
end
