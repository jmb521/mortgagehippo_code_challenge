class TransactionsController < ApplicationController
  before_action :set_user, only: [index, by_user]

  def index
  end


  def create
  end

  def by_user
    binding.pry
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:coin_id, :api_user_id)
  end

end
