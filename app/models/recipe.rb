class Recipe < ActiveRecord::Base
   attr_accessible :dish_name, :country_of_origin, :difficulty, :preperation_time

    validates :dish_name, :presence => true




end
