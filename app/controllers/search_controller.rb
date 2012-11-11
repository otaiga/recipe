class SearchController < ApplicationController
 

  def index

  end

  def search

  #@countrysearch = Recipe.where(:country_of_origin => params[:search]).all
  q = "%#{params[:search]}%"
  @countrysearch = Recipe.includes(:country).where("dish_name LIKE ? OR countries.name LIKE ? OR difficulty LIKE ? OR preperation_time LIKE?",
    q,
    q,
    q,
    q
)

  
  end

end

