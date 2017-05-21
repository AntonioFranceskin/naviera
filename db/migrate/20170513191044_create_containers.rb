class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :bic, :null => false
      t.string :type_container, :null => false, :default => 'Dryvan Std'
      t.references :company, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
    add_index :containers, :bic, :unique => true
  end
end