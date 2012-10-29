class RecipesController < ApplicationController

  def index
  
    @recipe = Recipe.all

  end

  def show
    @recipe = Recipe.all

  end

  def new 

  @recipe = Recipe.new

  end

  def create

  @recipe = Recipe.new(params[:recipe])
  if @recipe.valid?
    @recipe.save
    redirect_to(:action => :index, :notice => "Recipe sucessfully created.")
  else
    flash.now.alert = "Please ensure all fields are filled in."
    render :new

  end
end

  def edit

  end

  def update

  end

  def destroy

  end
end
