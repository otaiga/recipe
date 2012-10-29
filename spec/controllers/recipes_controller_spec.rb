require 'spec_helper'

describe RecipesController do
  describe "New Recipe Page" do

      it "should display new recipe  page" do
        get :new
        response.should be_success
        response.should render_template(:new)
      end
    end

end
