class RecipesController < ApplicationController
before_filter :authenticate_user!

  def index
    @q = Recipe.search(params[:q])
    @searchresults = @q.result(:distinct => true)
    @q.build_condition

    @meatrecipes = Recipe.meat_recipes.first
    #@meats = Recipe.find(:all, :select => ' category, dish_name, difficulty, preperation_time,avatar_file_name, avatar_updated_at')
    @meats= Recipe.select(:category).uniq(false)


  end

  def my_recipes
    
     @recipes = current_user.recipes if current_user.recipes #show recipes if the user has any recipes
     @favourites = current_user.favourites
  
  end

  def search_recipes
    
    

  end

  def all_recipes
    
    @recipes = Recipe.all
    @latestrecipe = Recipe.order("created_at desc").limit(5)
    @featurerecipe = Recipe.offset(rand(Recipe.count)).first
    #@toprankingcountry = Recipe.top_countries.first


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
      redirect_to my_recipes_path, :notice => "Thanks #{current_user.name} Recipe sucessfully created."
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


