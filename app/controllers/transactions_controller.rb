class TransactionsController < ApplicationController
  before_action :set_user, only: [index, by_user]

  def index
  end

  def new
  end

  def create
  end

  def by_user
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def transaction_params
    Params.require(:transaction).permit(:coin_id, :api_user_id)
  end

end
