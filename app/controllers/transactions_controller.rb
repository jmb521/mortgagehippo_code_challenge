class TransactionsController < ApplicationController


  def index
    @transactions = Transaction.all
    render json: @transactions
  end

# check to make sure that the transaction can go through in order to subtract the coin amount
  def withdrawal

    @coin = Coin.find_by(:id => params[:coin_id])
    if @coin && @coin.quantity > 0
      @transaction = Transaction.create(:coin_id => @coin.id, :api_user_id => @current_user.id, :deposit_or_withdrawal => "withdrawal")
      @coin.quantity -= 1
      @coin.save
      if @coin.quantity < 4
        puts "#{ENV["SENDGRID_USERNAME"]}"
        AdminMailer.low_inventory_alert(@coin).deliver

      end
      render json: "Successfully withdrew coin"
    else

      render json: "Either the coin doesn't exist or there are not sufficient quantity to withdrawal"
    end
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

    @by_user = Transaction.all.order(:api_user_id)
    render json: @by_user
  end

  private


  def transaction_params
    params.require(:transaction).permit(:id, :coin_id, :api_user_id)
  end

end
