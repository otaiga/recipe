class Recipe < ActiveRecord::Base

has_many :ingredients

attr_accessible :dish_name, :country_of_origin, :difficulty, :preperation_time, :ingredients
   

  

end
