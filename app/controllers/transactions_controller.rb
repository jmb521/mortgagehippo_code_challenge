class TransactionsController < ApplicationController


  def index
    @transactions = Transaction.all
    render json: @transactions
  end


  # def create
  #   binding.pry
  #
  #   @transaction = Transaction.create(transaction_params)
  # end

  def withdrawal

  end

  def deposit
    #find the coin that you want to increment
    #increase the quantity of the coin
    
    @coin = Coin.find_by(:id => params[:coin_id])
    if @coin
      @coin.quantity += 1
      @coin.save
      @transaction = Transaction.create(:coin_id => @coin.id, :api_user_id => @current_user.id, :deposit_or_withdrawal => "deposit")
      if @transaction
        render json: "Successfully deposited coin"
      else
        render json: "Your deposit was rejected"
      end
    else
      render json: "Coin is not found"
    end

  end

  def by_user
  end

  private


  def transaction_params
    params.require(:transaction).permit(:id, :coin_id, :api_user_id)
  end

end
