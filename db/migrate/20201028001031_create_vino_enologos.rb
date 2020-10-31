class CreateVinoEnologos < ActiveRecord::Migration[5.2]
  def change
    create_table :vino_enologos do |t|
      t.references :vino, foreign_key: true
      t.references :enologo, foreign_key: true
      t.integer :nota

      t.timestamps
    end
  end
end
