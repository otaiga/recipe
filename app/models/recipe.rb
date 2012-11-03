class Recipe < ActiveRecord::Base

  attr_accessible :dish_name, :country_of_origin, :difficulty, :preperation_time, :ingredient_id
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

end
