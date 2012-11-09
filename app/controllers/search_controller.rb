class SearchController < ApplicationController
 

  def index
  end

  def search

  #@countrysearch = Recipe.where(:country_of_origin => params[:search]).all
  #@countrysearch = Recipe.where(:dish_name => params[:search], :country_of_origin => params[:search], :difficulty => params[:search], :preperation_time => params[:search]).all
  #@countrysearch = Recipe.where(params[:search]).all
  #@countrysearch = Recipe.where(:dish_name => params[:search]).all
  @countrysearch = Recipe.where("dish_name = ? OR country_of_origin = ? OR difficulty = ? OR preperation_time = ?",
    params[:search],
    params[:search],
    params[:search],
    params[:search]
)
  end

end

