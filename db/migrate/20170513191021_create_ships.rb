class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.integer :imo, :null => false
      t.string :name, :null => false
      t.string :status, :null => false, :default => 'OnWay'
      t.string :type_ship, :null => false, :default => 'Portacontenedores'
      t.references :company, foreign_key: true

      t.timestamps
    end
    add_index :ships, :imo, :unique => true
  end
end
