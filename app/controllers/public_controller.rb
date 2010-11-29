class PublicController < ApplicationController
  
  def home
    @client = Client.new
  end
  
  def about; end
end