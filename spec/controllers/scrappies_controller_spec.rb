require 'spec_helper'

describe ScrappiesController do

  def mock_scrappy(stubs={})
    @mock_scrappy ||= mock_model(Scrappy, stubs).as_null_object
  end

    describe "GET index" do
    it "assigns all scrappies as @scrappies" do
      Scrappy.stub(:all).and_return([mock_scrappy])
      get :index
      assigns(:scrappies).should == [mock_scrappy]
    end
  end
  
  describe "GET show" do
    it "assigns the requested scrappy as @scrappy" do
      Scrappy.stub(:find).with("37").and_return(mock_scrappy)
      get :show, :id => "37"
      assigns(:scrappy).should equal(mock_scrappy)
    end
  end

  describe "GET new" do
    it "assigns a new scrappy as @scrappy" do
      Scrappy.stub(:new).and_return(mock_scrappy)
      get :new
      assigns(:scrappy).should equal(mock_scrappy)
    end
  end

  describe "GET edit" do
    it "assigns the requested scrappy as @scrappy" do
      Scrappy.stub(:find).with("37").and_return(mock_scrappy)
      get :edit, :id => "37"
      assigns(:scrappy).should equal(mock_scrappy)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created scrappy as @scrappy" do
        Scrappy.stub(:new).with({'these' => 'params'}).and_return(mock_scrappy(:save => true))
        post :create, :scrappy => {'these' => 'params'}
        assigns(:scrappy).should equal(mock_scrappy)
      end

      it "redirects to the created scrappy" do
        Scrappy.stub(:new).and_return(mock_scrappy(:save => true))
        post :create, :scrappy => {}
        response.should redirect_to(scrappy_url(mock_scrappy))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved scrappy as @scrappy" do
        Scrappy.stub(:new).with({'these' => 'params'}).and_return(mock_scrappy(:save => false))
        post :create, :scrappy => {'these' => 'params'}
        assigns(:scrappy).should equal(mock_scrappy)
      end

      it "re-renders the 'new' template" do
        Scrappy.stub(:new).and_return(mock_scrappy(:save => false))
        post :create, :scrappy => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested scrappy" do
        Scrappy.should_receive(:find).with("37").and_return(mock_scrappy)
        mock_scrappy.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :scrappy => {'these' => 'params'}
      end

      it "assigns the requested scrappy as @scrappy" do
        Scrappy.stub(:find).and_return(mock_scrappy(:update_attributes => true))
        put :update, :id => "1"
        assigns(:scrappy).should equal(mock_scrappy)
      end

      it "redirects to the scrappy" do
        Scrappy.stub(:find).and_return(mock_scrappy(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(scrappy_url(mock_scrappy))
      end
    end

    describe "with invalid params" do
      it "assigns the scrappy as @scrappy" do
        Scrappy.stub(:find).and_return(mock_scrappy(:update_attributes => false))
        put :update, :id => "1"
        assigns(:scrappy).should equal(mock_scrappy)
      end

      it "re-renders the 'edit' template" do
        Scrappy.stub(:find).and_return(mock_scrappy(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested scrappy" do
      Scrappy.should_receive(:find).with("37").and_return(mock_scrappy)
      mock_scrappy.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the scrappies list" do
      Scrappy.stub(:find).and_return(mock_scrappy(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(scrappies_url)
    end
  end

end
