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
    @client = Client.find(params[:id])
  end

  # POST /clients
  def create
    @client = Client.new(params[:client])

    if @client.save
      redirect_to(@client, :notice => 'Client was successfully created.')
    else
      render :action => "new"
    end
  end

end
