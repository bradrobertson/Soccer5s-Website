class ClientMailer < ActionMailer::Base
  default :from => "Soccer5s <info@soccer5s.com>"

  def client_email(client)
    mail :to => client.email, :subject => "Your Request Was Received"
  end

  def admin_email(client)
    @client = client
    address = Rails.env.production? ? 'info@soccer5s.com' : 'bradleyrobertson@gmail.com'
    mail :to => address, :subject => client.subject.present? ? client.subject : "Client Interest submitted"
  end

end
