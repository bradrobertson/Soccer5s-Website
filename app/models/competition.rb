class Competition < ActiveRecord::Base
  
  validates :name, :presence => true
  validates :email, :presence => true, 
    :length => {:minimum => 3, :maximum => 254},
    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates_acceptance_of :terms
  validates_presence_of :team_name
    
  after_create :send_mail
  
  private
  
  def send_mail
    CompetitionMailer.client_email(self).deliver
    CompetitionMailer.admin_email(self).deliver
  end
end
