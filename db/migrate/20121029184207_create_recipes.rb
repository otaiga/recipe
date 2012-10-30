class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :dish_name
      t.string :country_of_origin
      t.string :difficulty
      t.integer :preperation_time
      t.timestamps
    end
  end
end
