class CreatePreperations < ActiveRecord::Migration
  def change
    create_table :preperations do |t|
      t.text :prep_steps
      t.integer :recipe_id

      t.timestamps
    end
  end
end
