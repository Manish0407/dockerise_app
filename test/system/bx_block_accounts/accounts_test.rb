require "application_system_test_case"

class BxBlockAccounts::AccountsTest < ApplicationSystemTestCase
  setup do
    @bx_block_accounts_account = bx_block_accounts_accounts(:one)
  end

  test "visiting the index" do
    visit bx_block_accounts_accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "should create account" do
    visit bx_block_accounts_accounts_url
    click_on "New account"

    fill_in "Email", with: @bx_block_accounts_account.email
    fill_in "Password digest", with: @bx_block_accounts_account.password_digest
    fill_in "Username", with: @bx_block_accounts_account.username
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "should update Account" do
    visit bx_block_accounts_account_url(@bx_block_accounts_account)
    click_on "Edit this account", match: :first

    fill_in "Email", with: @bx_block_accounts_account.email
    fill_in "Password digest", with: @bx_block_accounts_account.password_digest
    fill_in "Username", with: @bx_block_accounts_account.username
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "should destroy Account" do
    visit bx_block_accounts_account_url(@bx_block_accounts_account)
    click_on "Destroy this account", match: :first

    assert_text "Account was successfully destroyed"
  end
end
