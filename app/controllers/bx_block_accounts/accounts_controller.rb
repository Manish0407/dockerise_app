class BxBlockAccounts::AccountsController < ApplicationController
  before_action :set_bx_block_accounts_account, only: %i[ show edit update destroy ]

  # GET /bx_block_accounts/accounts or /bx_block_accounts/accounts.json
  def index
    @bx_block_accounts_accounts = BxBlockAccounts::Account.all
  end

  # GET /bx_block_accounts/accounts/1 or /bx_block_accounts/accounts/1.json
  def show
  end

  # GET /bx_block_accounts/accounts/new
  def new
    @bx_block_accounts_account = BxBlockAccounts::Account.new
  end

  # GET /bx_block_accounts/accounts/1/edit
  def edit
  end

  # POST /bx_block_accounts/accounts or /bx_block_accounts/accounts.json
  def create
    @bx_block_accounts_account = BxBlockAccounts::Account.new(bx_block_accounts_account_params)

    respond_to do |format|
      if @bx_block_accounts_account.save
        format.html { redirect_to bx_block_accounts_account_url(@bx_block_accounts_account), notice: "Account was successfully created." }
        format.json { render :show, status: :created, location: @bx_block_accounts_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bx_block_accounts_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bx_block_accounts/accounts/1 or /bx_block_accounts/accounts/1.json
  def update
    respond_to do |format|
      if @bx_block_accounts_account.update(bx_block_accounts_account_params)
        format.html { redirect_to bx_block_accounts_account_url(@bx_block_accounts_account), notice: "Account was successfully updated." }
        format.json { render :show, status: :ok, location: @bx_block_accounts_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bx_block_accounts_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bx_block_accounts/accounts/1 or /bx_block_accounts/accounts/1.json
  def destroy
    @bx_block_accounts_account.destroy

    respond_to do |format|
      format.html { redirect_to bx_block_accounts_accounts_url, notice: "Account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bx_block_accounts_account
      @bx_block_accounts_account = BxBlockAccounts::Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bx_block_accounts_account_params
      params.require(:bx_block_accounts_account).permit(:username, :email, :password_digest)
    end
end
