class AddRecipeIdToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :recipe_id, :integer
  end

  def down
    remove_column :countries, :recipe_id
end
end
