class CompetitionMailer < ActionMailer::Base
  default :from => "Soccer5s <info@soccer5s.com>"
  
  def client_email(competition)
    mail :to => competition.email, :subject => competition.subject || "Your Request Was Received"
  end
  
  def admin_email(competition)
    @competition = competition
    address = Rails.env.production? ? (@competition.subject ? 'info@soccer5s.com' : 'win@soccer5s.com') : ['bradleyrobertson@gmail.com', 'jtsmith@soccer5s.com']
    mail :to => address, :subject => @competition.subject || "Mariner Competition submitted"
  end
  
end
