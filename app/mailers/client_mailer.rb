class ClientMailer < ActionMailer::Base
  default :from => "Soccer5s <info@soccer5s.com>"
  
  def client_email(client)
    mail :to => client.email, :subject => "Your Request Was Received"
  end
  
  def admin_email(client)
    @client = client
    mail :to => "info@soccer5s.com", :subject => "Client Interest submitted"
  end
  
end
