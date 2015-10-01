class AgenciesController < ApplicationController

  skip_before_action :authenticate_user!

  layout "agency"

  def index
  end

  def liz
  end
end

