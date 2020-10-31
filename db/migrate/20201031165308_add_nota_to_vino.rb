class AddNotaToVino < ActiveRecord::Migration[5.2]
  def change
    add_column :vinos, :nota, :integer
  end
end
