json.extract! employee, :id, :company_code_provided, :first_name, :last_name, :email_company, :percentage_btc, :fix_amount_btc, :btc_address, :btc_address_confirmed, :hash_of_btc_address, :account_active, :payroll_active, :created_at, :updated_at
json.url employee_url(employee, format: :json)
