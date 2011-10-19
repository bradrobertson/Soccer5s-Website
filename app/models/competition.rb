class Competition < ActiveRecord::Base
  
  validates :name, :presence => true
  validates :email, :presence => true, 
    :length => {:minimum => 3, :maximum => 254},
    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  # validates_acceptance_of :terms, :accept => [true, "1", "true"]
  validates_presence_of :team_name
    
  after_create :send_mail
  
  attr_accessible :name, :email, :terms, :team_name, :favorite_mariner, :telephone, :comments, :subject
  attr_accessor :terms_and_conditions
  
  private
  
  def send_mail
    CompetitionMailer.client_email(self).deliver
    CompetitionMailer.admin_email(self).deliver
  end
end
