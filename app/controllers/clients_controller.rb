class ClientsController < ApplicationController
  
  # GET /clients
  def index
    @clients = Client.all
  end

  # GET /clients/new
  def new
    @client = Client.new
  end
  
  # GET /clients/1
  def show
    # @client = Client.find(params[:id]) rescue Client.first
  end

  # POST /clients
  def create
    @client = Client.new(params[:client])

    if @client.save
      ClientMailer.client_email(@client).deliver
      ClientMailer.admin_email(@client).deliver
      redirect_to @client
    else
      render :action => "new"
    end
  end

end
