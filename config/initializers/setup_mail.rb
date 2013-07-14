ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => ENV['USERNAME'],
  :password             => ENV['PSWRD'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

require 'development_mail_interceptor'
ActionMailer::Base.default_url_options[:host] = "localhost:5000"
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?