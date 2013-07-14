class ApplicationController < ActionController::Base
  protect_from_forgery




  helper_method :current_users_list

  protected

  def current_users_list
    current_users.map { |user| user.username }.join(', ')
  end

  private

  def not_authenticated
    redirect_to login_path, :alert => "First login to access this page"
  end

end
