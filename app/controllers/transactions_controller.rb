class TransactionsController < ApplicationController


  def index
    @transactions = Transaction.all
    render json: @transactions
  end


  def create

    @transaction = Transaction.create(transaction_params)
  end

  def by_user
    binding.pry
  end

  private


  def transaction_params
    params.require(:transaction).permit(:id, :coin_id, :api_user_id)
  end

end
