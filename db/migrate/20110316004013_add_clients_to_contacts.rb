class AddClientsToContacts < ActiveRecord::Migration
  def self.up
    Client.all.each do |client|
      Contact.new(:email => client.email).save(:validate => false)
    end
  end

  def self.down
  end
end
