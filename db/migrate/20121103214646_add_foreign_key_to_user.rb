class AddForeignKeyToUser < ActiveRecord::Migration
  def up
    add_column :recipes, :user_id, :integer
  end
end
