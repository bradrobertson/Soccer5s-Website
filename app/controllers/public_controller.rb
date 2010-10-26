class PublicController < ApplicationController
  
  def home
    @client = Client.new
  end
end