class UserMailer < ActionMailer::Base
  default :from => ENV['EMAIL']

  def reset_password_email(user)
    @user = user
    @url  = edit_password_reset_url(user.reset_password_token)
    mail(:to => user.email,
         :subject => "Your password has been reset")
  end

      # def registration_confirmation(user)
      #   @user = user
      #   mail(:to => user.email, :subject => "Confirm Registration")
      # end

  def activation_needed_email(user)
    @user = user
    @url = "http://localhost:5000/users/#{user.activation_token}/activate"
    mail(:to => user.email,
        :subject => "Welcome to my site")
  end

  def activation_success_email(user)
    @user = user
    @url = "http://localhost:5000/login"
    mail(:to => user.email,
      :subject => "your account is now activated")
  end

end
