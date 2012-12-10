class RecipesController < ApplicationController
before_filter :authenticate_user!


  def index
    @q = Recipe.search(params[:q])
    @searchresults = @q.result(:distinct => true)
    #@q.build_condition
    
  end

  def search
   index
   render :partial => 'shared/searchresults'

  end

  def my_recipes
    @recipes = current_user.recipes.paginate(:page => params[:user_recipes_page], :per_page => 4) if current_user.recipes 
    @favourites = current_user.favourites.paginate(:page => params[:favourite_page], :per_page => 4) if current_user.favourites


  end

  
  def all_recipes
    
    @recipes = Recipe.all
    @latestrecipe = Recipe.order("created_at desc").limit(5)
    @featurerecipe = Recipe.offset(rand(Recipe.count)).first
    #@toprankingcountry = Recipe.top_countries.first
    @meats= Recipe.meat_recipes.paginate(:page => params[:meat_recipes], :per_page => 1)
    @vegrecipes = Recipe.veg_recipes.paginate(:page => params[:veg_recipes], :per_page => 1)
    @desserts = Recipe.dessert_recipes.paginate(:page => params[:dessert_recipes], :per_page => 1)

     
  end

  def show
    @recipe = Recipe.find(params[:id])
    @related_recipes = @recipe.related_recipes

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



