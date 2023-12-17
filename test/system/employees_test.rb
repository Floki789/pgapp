require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    check "Account active" if @employee.account_active
    fill_in "Btc address", with: @employee.btc_address
    check "Btc address confirmed" if @employee.btc_address_confirmed
    fill_in "Company code provided", with: @employee.company_code_provided
    fill_in "Email company", with: @employee.email_company
    fill_in "First name", with: @employee.first_name
    fill_in "Fix amount btc", with: @employee.fix_amount_btc
    fill_in "Hash of btc address", with: @employee.hash_of_btc_address
    fill_in "Last name", with: @employee.last_name
    check "Payroll active" if @employee.payroll_active
    fill_in "Percentage btc", with: @employee.percentage_btc
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    check "Account active" if @employee.account_active
    fill_in "Btc address", with: @employee.btc_address
    check "Btc address confirmed" if @employee.btc_address_confirmed
    fill_in "Company code provided", with: @employee.company_code_provided
    fill_in "Email company", with: @employee.email_company
    fill_in "First name", with: @employee.first_name
    fill_in "Fix amount btc", with: @employee.fix_amount_btc
    fill_in "Hash of btc address", with: @employee.hash_of_btc_address
    fill_in "Last name", with: @employee.last_name
    check "Payroll active" if @employee.payroll_active
    fill_in "Percentage btc", with: @employee.percentage_btc
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
