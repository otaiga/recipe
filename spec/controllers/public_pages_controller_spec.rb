require 'spec_helper'

  describe PublicPagesController do 
    describe "index (Home Page) page" do

      it "should display index (Home Page) page" do
        get :index
        response.should be_success
        response.should render_template(:index)
      end
    end





  end