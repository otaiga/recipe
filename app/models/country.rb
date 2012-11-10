class Country < ActiveRecord::Base

  belongs_to :recipe

  scope :code, lambda { |code| where(:code => code.to_s) }

  validates :code, :presence => true, :length => { :maximum => 5 }, :uniqueness => true
  validates :name, :presence => true, :length => { :maximum => 100 }

  attr_accessible :code, :name, :iso3, :numeric, :eu, :recipe_id
end
