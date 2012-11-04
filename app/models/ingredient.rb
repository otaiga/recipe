class Ingredient < ActiveRecord::Base
  belongs_to :recipe


  attr_accessible :ingredient_name
end
