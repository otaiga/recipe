class FavouritesController < ApplicationController

  def index

  end

  def create
    @favourite = current_user.favourites.new(recipe_id: params[:recipe_id])
    if @favourite.save
      redirect_to my_recipes_path, :notice => "Recipe added to Favourites"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy 
    redirect_to my_recipes_path, :notice => "Successfully deleted favourite"
  end

end
