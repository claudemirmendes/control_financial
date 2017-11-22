require 'test_helper'

class AccountReceivablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_receivable = account_receivables(:one)
  end

  test "should get index" do
    get account_receivables_url, as: :json
    assert_response :success
  end

  test "should create account_receivable" do
    assert_difference('AccountReceivable.count') do
      post account_receivables_url, params: { account_receivable: { account_receivable_id: @account_receivable.account_receivable_id, description: @account_receivable.description, received: @account_receivable.received, user_id: @account_receivable.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show account_receivable" do
    get account_receivable_url(@account_receivable), as: :json
    assert_response :success
  end

  test "should update account_receivable" do
    patch account_receivable_url(@account_receivable), params: { account_receivable: { account_receivable_id: @account_receivable.account_receivable_id, description: @account_receivable.description, received: @account_receivable.received, user_id: @account_receivable.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy account_receivable" do
    assert_difference('AccountReceivable.count', -1) do
      delete account_receivable_url(@account_receivable), as: :json
    end

    assert_response 204
  end
end
