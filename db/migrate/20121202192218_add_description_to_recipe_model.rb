class AddDescriptionToRecipeModel < ActiveRecord::Migration
  def change
    add_column :recipes, :description, :text
  end

  def down
    remove_column :recipes, :description
  end
end
