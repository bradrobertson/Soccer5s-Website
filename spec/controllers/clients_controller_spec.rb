require 'spec_helper'

describe ClientsController do

  def mock_client(stubs={})
    (@mock_client ||= mock_model(Client).as_null_object).tap do |client|
      client.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all clients as @clients" do
      Client.stub(:all) { [mock_client] }
      get :index
      assigns(:clients).should eq([mock_client])
    end
  end

  describe "GET show" do
    it "assigns the requested client as @client" do
      Client.stub(:find).with("37") { mock_client }
      get :show, :id => "37"
      assigns(:client).should be(mock_client)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created client as @client" do
        Client.stub(:new).with({'these' => 'params'}) { mock_client(:save => true) }
        post :create, :client => {'these' => 'params'}
        assigns(:client).should be(mock_client)
      end

      it "redirects to the created client" do
        Client.stub(:new) { mock_client(:save => true) }
        post :create, :client => {}
        response.should redirect_to(client_url(mock_client))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved client as @client" do
        Client.stub(:new).with({'these' => 'params'}) { mock_client(:save => false) }
        post :create, :client => {'these' => 'params'}
        assigns(:client).should be(mock_client)
      end

      it "re-renders the 'new' template" do
        Client.stub(:new) { mock_client(:save => false) }
        post :create, :client => {}
        response.should render_template("new")
      end
    end

  end



end
