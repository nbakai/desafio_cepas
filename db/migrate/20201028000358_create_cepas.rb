class CreateCepas < ActiveRecord::Migration[5.2]
  def change
    create_table :cepas do |t|
      t.string :nombre
      t.float :proporcion

      t.timestamps
    end
  end
end
