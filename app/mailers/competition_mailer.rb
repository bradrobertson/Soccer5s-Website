class CompetitionMailer < ActionMailer::Base
  default :from => "Soccer5s <info@soccer5s.com>"
  
  def client_email(client)
    mail :to => client.email, :subject => "Your Request Was Received"
  end
  
  def admin_email(competition)
    @competition = competition
    address = Rails.env.production? ? 'win@soccer5s.com' : ['bradleyrobertson@gmail.com', 'jtsmith@soccer5s.com']
    mail :to => address, :subject => "Mariner Competition submitted"
  end
  
end
