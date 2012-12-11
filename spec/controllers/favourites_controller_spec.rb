require 'spec_helper'

describe FavouritesController do
  before(:each) do
    @new_user =  User.create!(name: "test_user2", email: "test_user2@example.com", password: "password")
    @new_user.confirm!
  end

  it "should create a favorite for a signed in user" do
    sign_in @new_user
    post :create, recipe_id: given_recipe(given_user).id
    @new_user.favourites.count.should == 1
    @new_user.favourites.first.recipe.should == given_recipe(given_user)
  end

  it "should be able to add own recipes to favourites" do
    given_user.confirm!
    sign_in given_user
    post :create, recipe_id: given_recipe(given_user).id
    given_user.reload
    given_user.favourites.count.should == 1
    given_user.favourites.first.recipe.should == given_recipe(given_user)
  end

end
