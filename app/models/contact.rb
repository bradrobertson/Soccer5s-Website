class Contact < ActiveRecord::Base

  validates :name, :presence => true
  validates :email, :presence => true,
    :length => {:minimum => 3, :maximum => 254},
    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

  attr_accessible :email, :name, :telephone, :message, :subject

  # Email message subject...  I don't care that this doesn't belong here
  attr_accessor :subject
end
