ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'soccer5s.com',
  :user_name            => 'app@soccer5s.com',
  :password             => 'phei2ahB',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}