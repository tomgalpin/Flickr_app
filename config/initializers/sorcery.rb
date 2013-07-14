Rails.application.config.sorcery.submodules = [:remember_me, :activity_logging, :user_activation, :reset_password]

# Here you can configure each submodule's features.
Rails.application.config.sorcery.configure do |config|
  # --- user config ---
  config.user_config do |user|
    user.user_activation_mailer = UserMailer
    user.reset_password_mailer = UserMailer
  end

  # This line must come after the 'user config' block.
  # Define which model authenticates with sorcery.
  config.user_class = "User"
end
