class AddCategoryToRecipe < ActiveRecord::Migration
  def change

    add_column :recipes, :category, :string
  end

  def down
    remove_column :recipes, :category
end
end
