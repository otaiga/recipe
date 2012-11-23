class AddNameToUserTable < ActiveRecord::Migration
  def change

    add_column :users, :name, :string
  end

  def down

    remove_column :users, :name
  end
end
