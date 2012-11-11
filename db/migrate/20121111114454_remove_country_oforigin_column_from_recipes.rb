class RemoveCountryOforiginColumnFromRecipes < ActiveRecord::Migration
  def up
    remove_column :recipes, :country_of_origin
  end

  def down
    add_column :recipes, :country_of_origin
  end
end
