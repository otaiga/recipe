require 'spec_helper'

describe FavouritesController do
  before(:each) do
    @new_user =  User.create!(name: "test_user2", email: "test_user2@example.com", password: "password")
    @new_user.confirm!
    sign_in @new_user
  end

  it "should create a favorite for a signed in user" do
    post :create, recipe_id: given_recipe(given_user).id
    @new_user.favourites.count.should == 1
  end

end
