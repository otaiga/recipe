class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  attr_accessible :user_id, :recipe_id
end
