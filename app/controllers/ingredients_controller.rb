class IngredientsController < ApplicationController
  def new
    @ingredient = recipe.find(params[:recipe_id]).ingredients.new
    @recipe_id = params[:recipe_id]

  end
end
