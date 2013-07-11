class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  helper_method :current_user

  private

  def not_authenticated
    redirect_to login_path, :alert => "First login to access this page"
  end

end
