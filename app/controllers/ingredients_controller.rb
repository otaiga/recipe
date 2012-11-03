class IngredientsController < ApplicationController

  def new

  @ingredient = Recipe.find(params[:recipe_id]).ingredients.new
  @recipe_id = params[:recipe_id]

  



  end