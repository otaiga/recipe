class Recipe < ActiveRecord::Base

has_many :ingredients 
has_many :preperations

attr_accessible :dish_name, :country_of_origin, :difficulty, :preperation_time, :ingredients_attributes, :preperations_attributes, :avatar

has_attached_file :avatar, :styles => {  :medium => "300x300>", :thumb => "100x100>" } 

accepts_nested_attributes_for :ingredients, :preperations

scope :top_countries, order("country_of_origin DESC")


  

end
