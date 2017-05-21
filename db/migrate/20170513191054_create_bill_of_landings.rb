class CreateBillOfLandings < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_of_landings do |t|
      t.string :type_bl, :null => false, :default => 'House'
      t.references :container, foreign_key: true
      t.references :client, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
