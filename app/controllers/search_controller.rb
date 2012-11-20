class SearchController < ApplicationController
 

  def index

  end

  def search
  # q = "%#{params[:search]}%"
  #@countrysearch = Recipe.includes(:country).where("dish_name LIKE ? OR countries.name LIKE ? OR difficulty LIKE ? OR preperation_time LIKE?", q, q, q, q )

  #@countrysearch = Recipe.joins("LEFT OUTER JOIN countries ON countries.id = recipes.country_id").select

  render :partial => 'shared/searchresults'

   
  end

  def search_recipes

   
  end

  


end

