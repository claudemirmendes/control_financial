require 'test_helper'

class AccountPayablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_payable = account_payables(:one)
  end

  test "should get index" do
    get account_payables_url, as: :json
    assert_response :success
  end

  test "should create account_payable" do
    assert_difference('AccountPayable.count') do
      post account_payables_url, params: { account_payable: { account_payable__id: @account_payable.account_payable__id, description: @account_payable.description, parcel: @account_payable.parcel, payed: @account_payable.payed, user_id: @account_payable.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show account_payable" do
    get account_payable_url(@account_payable), as: :json
    assert_response :success
  end

  test "should update account_payable" do
    patch account_payable_url(@account_payable), params: { account_payable: { account_payable__id: @account_payable.account_payable__id, description: @account_payable.description, parcel: @account_payable.parcel, payed: @account_payable.payed, user_id: @account_payable.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy account_payable" do
    assert_difference('AccountPayable.count', -1) do
      delete account_payable_url(@account_payable), as: :json
    end

    assert_response 204
  end
end
