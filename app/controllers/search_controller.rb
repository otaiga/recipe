class SearchController < ApplicationController
 

  def index


  end

  def search
    q = "%#{params[:search]}%"
  @countrysearch = Recipe.includes(:country).where("dish_name LIKE ? OR countries.name LIKE ? OR difficulty LIKE ? OR preperation_time LIKE?",
    q,
    q,
    q,
    q
)

render :partial => 'shared/searchresults'

  end

  def search_recipes


  end

  


end

