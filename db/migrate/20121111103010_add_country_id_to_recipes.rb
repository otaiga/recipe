class AddCountryIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :country_id, :integer
  end

  def down
    remove_column :recipes, :country_id
end
end