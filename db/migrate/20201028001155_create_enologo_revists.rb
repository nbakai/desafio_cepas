class CreateEnologoRevists < ActiveRecord::Migration[5.2]
  def change
    create_table :enologo_revists do |t|
      t.references :enologo, foreign_key: true
      t.references :revist, foreign_key: true
      t.string :cargo

      t.timestamps
    end
  end
end
