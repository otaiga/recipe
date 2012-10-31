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
    @recipe = Recipe.find(params[:recipe])

  end

  def update
    @recipe = Recipe.find(params[:id])

   if @recipe.update_attributes(params[:recipe])
    redirect_to recipe_path, :notice => "Successfully updated recipe"
  else 

    render 'edit'
    
  end
end

  def destroy

    @recipe = Recipe.find(params[:id])
    @recipe.destroy 
    
     
     
  end

end


