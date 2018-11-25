class CoinsController < ApplicationController


  def index
    @coins = Coin.all

    render json: @coins
  end

  def show
    @coin = Coin.find_by(:id => params[:id])
    render json: @coin
  end


  def create
    @coin = Coin.create(coin_params)
  end

  def update
    @coin = Coin.find_by(id: params[:id])

    @coin.update(coin_params)
  end

  def destroy
    @coin = Coin.find_by(coin_params)
    @coin.delete
  end

  def total
    total = 0

    Coin.all.each do |c|
      total += c.value.to_f.round(2) * c.quantity.to_i
      total = total.round(2)
    end
    
    render json: '%.2f' % total
  end

  private


  def coin_params
    params.require(:coin).permit(:id, :name, :value)
  end
end
