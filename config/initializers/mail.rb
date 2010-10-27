ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'soccer5s.com',
  :user_name            => 'info@soccer5s.com',
  :password             => 'mariners',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}