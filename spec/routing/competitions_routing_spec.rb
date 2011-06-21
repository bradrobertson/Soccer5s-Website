require "spec_helper"

describe CompetitionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/competitions" }.should route_to(:controller => "competitions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/competitions/new" }.should route_to(:controller => "competitions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/competitions/1" }.should route_to(:controller => "competitions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/competitions/1/edit" }.should route_to(:controller => "competitions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/competitions" }.should route_to(:controller => "competitions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/competitions/1" }.should route_to(:controller => "competitions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/competitions/1" }.should route_to(:controller => "competitions", :action => "destroy", :id => "1")
    end

  end
end
