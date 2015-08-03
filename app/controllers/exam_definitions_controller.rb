class ExamDefinitionsController < ApplicationController

  before_filter :require_login

  def index
    @definitions = ExamDefinition.all
  end

end

