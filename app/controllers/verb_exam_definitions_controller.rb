class VerbExamDefinitionsController < ApplicationController

  def index
    @definitions = VerbExamDefinition.all
  end

end
