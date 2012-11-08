class SearchController < ApplicationController
 

  def index
  end

  def search

     @countrysearch = Recipe.where(:country_of_origin => params[:search]).all
  end

end

