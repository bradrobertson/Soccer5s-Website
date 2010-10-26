require "spec_helper"

describe ClientsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/clients" }.should route_to(:controller => "clients", :action => "index")
    end

    it "recognizes and generates #show" do
      { :get => "/clients/1" }.should route_to(:controller => "clients", :action => "show", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/clients" }.should route_to(:controller => "clients", :action => "create")
    end

  end
end
