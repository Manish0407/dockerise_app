json.extract! bx_block_accounts_account, :id, :username, :email, :password_digest, :created_at, :updated_at
json.url bx_block_accounts_account_url(bx_block_accounts_account, format: :json)
