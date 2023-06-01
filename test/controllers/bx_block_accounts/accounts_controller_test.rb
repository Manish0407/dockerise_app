require "test_helper"

class BxBlockAccounts::AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bx_block_accounts_account = bx_block_accounts_accounts(:one)
  end

  test "should get index" do
    get bx_block_accounts_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_bx_block_accounts_account_url
    assert_response :success
  end

  test "should create bx_block_accounts_account" do
    assert_difference("BxBlockAccounts::Account.count") do
      post bx_block_accounts_accounts_url, params: { bx_block_accounts_account: { email: @bx_block_accounts_account.email, password_digest: @bx_block_accounts_account.password_digest, username: @bx_block_accounts_account.username } }
    end

    assert_redirected_to bx_block_accounts_account_url(BxBlockAccounts::Account.last)
  end

  test "should show bx_block_accounts_account" do
    get bx_block_accounts_account_url(@bx_block_accounts_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_bx_block_accounts_account_url(@bx_block_accounts_account)
    assert_response :success
  end

  test "should update bx_block_accounts_account" do
    patch bx_block_accounts_account_url(@bx_block_accounts_account), params: { bx_block_accounts_account: { email: @bx_block_accounts_account.email, password_digest: @bx_block_accounts_account.password_digest, username: @bx_block_accounts_account.username } }
    assert_redirected_to bx_block_accounts_account_url(@bx_block_accounts_account)
  end

  test "should destroy bx_block_accounts_account" do
    assert_difference("BxBlockAccounts::Account.count", -1) do
      delete bx_block_accounts_account_url(@bx_block_accounts_account)
    end

    assert_redirected_to bx_block_accounts_accounts_url
  end
end
