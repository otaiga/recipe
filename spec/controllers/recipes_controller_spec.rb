require 'spec_helper'

describe RecipesController do
  describe "New Recipe Page" do

      it "should display new recipe  page" do
        get :new
        response.should be_success
        response.should render_template(:new)
      end
    end

    
  describe "Show Recipe Page" do

      it "should display show recipe  page" do
        get :index
        response.should be_success
        response.should render_template(:index)
      end
    end

    let(:recipe) { Factory.create(:recipe) }

    describe "Show Edit Recipe Page" do

      it "should display edit recipe  page" do
        get :edit, :id => recipe.id
        response.should be_success
        response.should render_template(:edit)
      end
    end



end
