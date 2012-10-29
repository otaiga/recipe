class Recipe < ActiveRecord::Base
   attr_accessible :dish_name, :country_of_origin, :difficulty, :ingredients, :ingredients_1, :ingredients_2, :ingredients_3, :ingredients_4, :ingredients_5, :preperation_time, :preperation_1, :preperation_2, :preperation_3, :preperation_4, :preperation_5
end
