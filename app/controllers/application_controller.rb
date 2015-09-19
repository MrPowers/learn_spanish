class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def after_sign_in_path_for(resource_or_scope)
    start_exam_path
  end

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end

end
