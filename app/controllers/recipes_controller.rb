class RecipesController < ApplicationController
before_filter :authenticate_user!

  def index
  
   

  end

  def my_recipes
    
     @recipes = current_user.recipes if current_user.recipes #show recipes if the user has any recipes
     
  end

  def show
    @recipe = Recipe.find(params[:id])

  end

  def new 

  @recipe = Recipe.new
  @recipe.ingredients.build
  @recipe.preperations.build

  end

  def create
    @recipe = current_user.recipes.new(params[:recipe])
    if @recipe.save
      redirect_to my_recipes_path, :notice => "Recipe sucessfully created."
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])

  end

  def update
    @recipe = Recipe.find(params[:id])

   if @recipe.update_attributes(params[:recipe])
    redirect_to my_recipes_path, :notice => "Successfully updated recipe"
  else 

    render :action => 'edit'
    
  end
end

  def destroy

    @recipe = Recipe.find(params[:id])
    @recipe.destroy 
    redirect_to my_recipes_path, :notice => "Successfully deleted recipe"
    
     
    
  end

end


