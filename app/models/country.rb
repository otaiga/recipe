class Country < ActiveRecord::Base

  has_many :recipes

  scope :code, lambda { |code| where(:code => code.to_s) }

  validates :code, :presence => true, :length => { :maximum => 5 }, :uniqueness => true
  validates :name, :presence => true, :length => { :maximum => 100 }

  attr_accessible :code, :name, :iso3, :numeric, :eu, :country_id

  #scope :top_countries, order("country_name DESC")
end
