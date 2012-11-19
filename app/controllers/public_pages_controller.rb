class PublicPagesController < ApplicationController

  def index

    @recipes = Recipe.all
    @latestrecipe = Recipe.order("created_at desc").limit(5)
    @featurerecipe = Recipe.offset(rand(Recipe.count)).first
    @toprankingcountry = Recipe.top_countries.first
    
  end
end
