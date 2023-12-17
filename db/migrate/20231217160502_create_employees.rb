class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :company_code_provided
      t.string :first_name
      t.string :last_name
      t.string :email_company
      t.integer :percentage_btc
      t.integer :fix_amount_btc
      t.string :btc_address
      t.boolean :btc_address_confirmed
      t.string :hash_of_btc_address
      t.boolean :account_active
      t.boolean :payroll_active

      t.timestamps
    end
  end
end
