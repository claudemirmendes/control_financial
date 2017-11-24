class Private::AccountPayablesController < Private::BaseController
  before_action :set_account_payable, only: [:show, :update, :destroy]

  # GET /account_payables
  def index
    @account_payables = AccountPayable.all

    render json: @account_payables
  end

  # GET /account_payables/1
  def show
    render json: @account_payable
  end

  # POST /account_payables
  def create
    @account_payable = AccountPayable.new(account_payable_params)

    if @account_payable.save
      render json: @account_payable, status: :created, location: @account_payable
    else
      render json: @account_payable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /account_payables/1
  def update
    if @account_payable.update(account_payable_params)
      render json: @account_payable
    else
      render json: @account_payable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /account_payables/1
  def destroy
    @account_payable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_payable
      @account_payable = AccountPayable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def account_payable_params
      params.require(:account_payable).permit(:description, :account_payable__id, :payed, :user_id, :parcel)
    end
end
