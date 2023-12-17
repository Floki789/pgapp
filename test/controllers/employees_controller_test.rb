require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference("Employee.count") do
      post employees_url, params: { employee: { account_active: @employee.account_active, btc_address: @employee.btc_address, btc_address_confirmed: @employee.btc_address_confirmed, company_code_provided: @employee.company_code_provided, email_company: @employee.email_company, first_name: @employee.first_name, fix_amount_btc: @employee.fix_amount_btc, hash_of_btc_address: @employee.hash_of_btc_address, last_name: @employee.last_name, payroll_active: @employee.payroll_active, percentage_btc: @employee.percentage_btc } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { account_active: @employee.account_active, btc_address: @employee.btc_address, btc_address_confirmed: @employee.btc_address_confirmed, company_code_provided: @employee.company_code_provided, email_company: @employee.email_company, first_name: @employee.first_name, fix_amount_btc: @employee.fix_amount_btc, hash_of_btc_address: @employee.hash_of_btc_address, last_name: @employee.last_name, payroll_active: @employee.payroll_active, percentage_btc: @employee.percentage_btc } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference("Employee.count", -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
