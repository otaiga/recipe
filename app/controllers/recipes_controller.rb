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
    @recipe.save
    redirect_to recipes_path, :notice => "Recipe sucessfully created."
end

  def edit
    @recipe = Recipe.find(params[:id])

  end

  def update
    @recipe = Recipe.find(params[:id])

   if @recipe.update_attributes(params[:recipe])
    redirect_to recipes_path, :notice => "Successfully updated recipe"
  else 

    render :action => 'edit'
    
  end
end

  def destroy

    @recipe = Recipe.find(params[:id])
    @recipe.destroy 
    redirect_to recipes_path, :notice => "Successfully deleted recipe"
    
     
    
  end

end


