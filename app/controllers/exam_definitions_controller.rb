class ExamDefinitionsController < ApplicationController

  def index
    @definitions = ExamDefinition.all
  end

end

