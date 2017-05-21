class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name, :null => false
      t.string :lastname, :null => false
      t.string :rif, :null => false
      t.string :type_client, :null => false, :default => 'Final'      

      t.timestamps
    end
    add_index :clients, :rif, :unique => true
  end
end
