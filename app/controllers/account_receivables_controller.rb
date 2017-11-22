class AccountReceivablesController < ApplicationController
  before_action :set_account_receivable, only: [:show, :update, :destroy]

  # GET /account_receivables
  def index
    @account_receivables = AccountReceivable.all

    render json: @account_receivables
  end

  # GET /account_receivables/1
  def show
    render json: @account_receivable
  end

  # POST /account_receivables
  def create
    @account_receivable = AccountReceivable.new(account_receivable_params)

    if @account_receivable.save
      render json: @account_receivable, status: :created, location: @account_receivable
    else
      render json: @account_receivable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /account_receivables/1
  def update
    if @account_receivable.update(account_receivable_params)
      render json: @account_receivable
    else
      render json: @account_receivable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /account_receivables/1
  def destroy
    @account_receivable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_receivable
      @account_receivable = AccountReceivable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def account_receivable_params
      params.require(:account_receivable).permit(:description, :account_receivable_id, :received, :user_id)
    end
end
