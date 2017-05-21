class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :embarking_country, :null => false
      t.date :embarking_date, :null => false
      t.string :disembarking_country, :null => false
      t.date :disembarking_date, :null => false
      t.references :ship, foreign_key: true

      t.timestamps
    end
    add_index :trips, [:embarking_country, :embarking_date]
    add_index :trips, [:disembarking_country, :disembarking_date]
  end
end
