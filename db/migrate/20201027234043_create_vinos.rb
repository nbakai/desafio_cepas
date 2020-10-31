class CreateVinos < ActiveRecord::Migration[5.2]
  def change
    create_table :vinos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
