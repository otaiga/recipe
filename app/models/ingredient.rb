class Ingredient < ActiveRecord::Base
  attr_accessible :ingredients

  belongs_to :recipe
end
