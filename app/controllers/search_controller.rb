class SearchController < ApplicationController
 

  def index
  end

  def search

  #@countrysearch = Recipe.where(:country_of_origin => params[:search]).all
  q = "%#{params[:search]}%"
  @countrysearch = Recipe.where("dish_name LIKE ? OR country_of_origin LIKE ? OR difficulty LIKE ? OR preperation_time LIKE?",
    q,
    q,
    q,
    q
)

  @countries = Country.all
  end

end

