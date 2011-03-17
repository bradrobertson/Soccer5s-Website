require 'spec_helper'

describe ContactsController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "should redirect to show on success" do
      pending("not done yet")
      get 'create'
      response.should be_success
    end
    
    it "should render new when there are errors"
  end

end
