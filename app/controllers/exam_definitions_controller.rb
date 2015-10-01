class ExamDefinitionsController < ApplicationController

  def index
    @definitions = ExamDefinition.all.sort_by(&:position)
  end

end

