class Recipe < ActiveRecord::Base
belongs_to :user
has_one :country
has_many :ingredients 
has_many :preperations
has_many :favourites





attr_accessible :dish_name, :difficulty, :preperation_time, :ingredients_attributes, :preperations_attributes, :country_attributes, :avatar

has_attached_file :avatar, :styles => {  :medium => "300x300>", :thumb => "100x100>" } 

accepts_nested_attributes_for :ingredients, :preperations, :country

scope :top_countries, order("country_of_origin DESC")


  

end
