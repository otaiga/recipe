class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :dish_name
      t.string :country_of_origin
      t.string :difficulty
      t.text :ingredients
      t.text :ingredients_1
      t.text :ingredients_2
      t.text :ingredients_3
      t.text :ingredients_4
      t.text :ingredients_5
      t.integer :preperation_time
      t.text :preperation_1
      t.text :preperation_2
      t.text :preperation_3
      t.text :preperation_4
      t.text :preperation_5
      t.timestamps
    end
  end
end
