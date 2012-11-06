class Recipe < ActiveRecord::Base
belongs_to :user
has_many :ingredients 
has_many :preperations
has_many :favourites





attr_accessible :dish_name, :country_of_origin, :difficulty, :preperation_time, :ingredients_attributes, :preperations_attributes, :avatar

has_attached_file :avatar, :styles => {  :medium => "300x300>", :thumb => "100x100>" } 

accepts_nested_attributes_for :ingredients, :preperations

scope :top_countries, order("country_of_origin DESC")


  

end
