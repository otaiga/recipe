class Recipe < ActiveRecord::Base
belongs_to :user
belongs_to :country
has_many :ingredients 
has_many :preperations
has_many :favourites








attr_accessible :dish_name, :difficulty, :preperation_time, :ingredients_attributes, :preperations_attributes, :country_id, :avatar, :category

has_attached_file :avatar, :styles => {  :medium => "300x300>", :thumb => "100x100>" } 

accepts_nested_attributes_for :ingredients, :preperations

#scope :top_countries, order("country_name DESC")
scope :meat_recipes, where(:category => "meat")



  

end
