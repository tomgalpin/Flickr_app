class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])

    user = login(params[:username], params[:password], params[:remember_me])

    if user
      redirect_back_or_to user_path(user.id), :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, :notice => "Logged out!"
  end

end
