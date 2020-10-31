class AddAdmiToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admi, :boolean
  end
end
