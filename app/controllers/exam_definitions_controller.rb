class ExamDefinitionsController < ApplicationController

  before_filter :require_login

  def index
    @definitions = ExamDefinition.all.sort_by(&:position)
  end

end

