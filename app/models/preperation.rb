class Preperation < ActiveRecord::Base
  belongs_to :recipe

  attr_accessible :prep_steps
  # attr_accessible :title, :body
end
