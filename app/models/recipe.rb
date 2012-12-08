class Recipe < ActiveRecord::Base

belongs_to :user
belongs_to :country
has_many :ingredients 
has_many :preperations
has_many :favourites










attr_accessible :dish_name, :difficulty, :preperation_time, :ingredients_attributes, :preperations_attributes, :country_id, :avatar, :category, :description

has_attached_file :avatar, :styles => { :myrecipes => "260x260", :showrecipe => "500x500>", :medium => "300x300>", :thumb => "100x100>" } 

accepts_nested_attributes_for :ingredients, :preperations

#scope :top_countries, order("country_name DESC")

#Scopes

scope :meat_recipes, where(:category => "meat")
scope :veg_recipes, where(:category => "vegeterian")




def self.dessert_recipes
  self.where(:category => "Desserts")

end


def related_recipes

    # take the recipe's dish name (@recipe.dish_name) and
    # split it at spaces, then wrap each with '%' to create SQL query terms,
    # so "italian pasta" becomes ["%italian%", "%pasta%"]
    terms = dish_name.split(' ').map { |t| "%#{t}%" }

    # create a scope with all recipes except this one
    others = self.class.where('id != ?', id)

    # return all recipes other than this one that contain any of the terms
    # e.g. for the dish "italian pasta", this will become:
    # others.where('dish_name LIKE ? OR dish_name LIKE ?', '%italian%', '%pasta%')
    return others.where(terms.map { 'dish_name LIKE ?' }.join(' OR '), *(terms))
  end
end
