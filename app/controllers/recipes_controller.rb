class RecipesController < ApplicationController

  def index
  
    @recipes = Recipe.all

  end

  def show
    @recipe = Recipe.find(params[:id])

  end

  def new 

  @recipe = Recipe.new

  end

  def create

  @recipe = Recipe.new(params[:recipe])
  if @recipe.valid?
    @recipe.save
    redirect_to new_recipe_path, :notice => "Recipe sucessfully created."
  else
    flash.now.alert = "Please ensure all fields are filled in."
    render :new

  end
end

  def edit
    @recipe = Recipe.find(params[:id])

  end

  def update
    @recipe =Recipe.find(params[:recipe])
    @recipe.update_attributes(params[:recipe])
    @recipe.save
    redirect_to recipe_path, :notice => "Successfully updated recipe"
    
  end

  def destroy

    @recipe = Recipe.find(params[:id])
     if @recipe.destroy
    redirect_to recipe_path, :notice => "Successfully Deleted Recipe"
     else
    redirect_to recipe_path, :notice => "OOPS something went wrong"
  
  end
  end

end


