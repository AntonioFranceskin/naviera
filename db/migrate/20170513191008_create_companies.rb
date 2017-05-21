class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company_name, :null => false
      t.string :rif, :null => false
      t.string :status, :null => false, :default => 'OnGoing'
      t.string :type_company, :null => false, :default => 'Naviera'

      t.timestamps
    end
    add_index :companies, :rif, :unique => true
  end
end
