class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user

  def current_user
    @current_user ||= Hiker.find(session[:hiker_id]) if session[:hiker_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def require_user
    if !logged_in?
      flash[:error] = "Please log in"
      redirect_to new_session_path
    end
  end

  def redirect_if_logged_in
    if logged_in?
      redirect_to hiker_path(@current_user)
    end
  end
end
