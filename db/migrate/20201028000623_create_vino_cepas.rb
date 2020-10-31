class CreateVinoCepas < ActiveRecord::Migration[5.2]
  def change
    create_table :vino_cepas do |t|
      t.references :vino, foreign_key: true
      t.references :cepa, foreign_key: true
      t.boolean :disponible

      t.timestamps
    end
  end
end
