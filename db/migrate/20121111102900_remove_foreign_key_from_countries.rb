class RemoveForeignKeyFromCountries < ActiveRecord::Migration
  def up
    remove_column :countries, :recipe_id
  end

  def down
    add_column :countries, :recipe_id, :integer
  end
end
