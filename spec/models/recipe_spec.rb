require 'spec_helper'


#CRUD Methods

describe "DELETE destroy" do
  it "destroys the requested recipe" do
    Recipe.stub(:find).with("37") { mock_recipe }
    mock_recipe.should_receive(:delete)
    delete :delete, :id => "37"
  end
 
  it "redirects to the recipes list" do
    Recipe.stub(:find) { mock_recipe }
    delete :delete, :id => "1"
    response.should redirect_to recipes_path
  end
end