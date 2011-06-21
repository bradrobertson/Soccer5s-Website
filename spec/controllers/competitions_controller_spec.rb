require 'spec_helper'

describe CompetitionsController do

  def mock_competition(stubs={})
    (@mock_competition ||= mock_model(Competition).as_null_object).tap do |competition|
      competition.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all competitions as @competitions" do
      Competition.stub(:all) { [mock_competition] }
      get :index
      assigns(:competitions).should eq([mock_competition])
    end
  end

  describe "GET show" do
    it "assigns the requested competition as @competition" do
      Competition.stub(:find).with("37") { mock_competition }
      get :show, :id => "37"
      assigns(:competition).should be(mock_competition)
    end
  end

  describe "GET new" do
    it "assigns a new competition as @competition" do
      Competition.stub(:new) { mock_competition }
      get :new
      assigns(:competition).should be(mock_competition)
    end
  end

  describe "GET edit" do
    it "assigns the requested competition as @competition" do
      Competition.stub(:find).with("37") { mock_competition }
      get :edit, :id => "37"
      assigns(:competition).should be(mock_competition)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created competition as @competition" do
        Competition.stub(:new).with({'these' => 'params'}) { mock_competition(:save => true) }
        post :create, :competition => {'these' => 'params'}
        assigns(:competition).should be(mock_competition)
      end

      it "redirects to the created competition" do
        Competition.stub(:new) { mock_competition(:save => true) }
        post :create, :competition => {}
        response.should redirect_to(competition_url(mock_competition))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved competition as @competition" do
        Competition.stub(:new).with({'these' => 'params'}) { mock_competition(:save => false) }
        post :create, :competition => {'these' => 'params'}
        assigns(:competition).should be(mock_competition)
      end

      it "re-renders the 'new' template" do
        Competition.stub(:new) { mock_competition(:save => false) }
        post :create, :competition => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested competition" do
        Competition.should_receive(:find).with("37") { mock_competition }
        mock_competition.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :competition => {'these' => 'params'}
      end

      it "assigns the requested competition as @competition" do
        Competition.stub(:find) { mock_competition(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:competition).should be(mock_competition)
      end

      it "redirects to the competition" do
        Competition.stub(:find) { mock_competition(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(competition_url(mock_competition))
      end
    end

    describe "with invalid params" do
      it "assigns the competition as @competition" do
        Competition.stub(:find) { mock_competition(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:competition).should be(mock_competition)
      end

      it "re-renders the 'edit' template" do
        Competition.stub(:find) { mock_competition(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested competition" do
      Competition.should_receive(:find).with("37") { mock_competition }
      mock_competition.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the competitions list" do
      Competition.stub(:find) { mock_competition }
      delete :destroy, :id => "1"
      response.should redirect_to(competitions_url)
    end
  end

end
