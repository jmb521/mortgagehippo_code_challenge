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
    @total = Coin.coin_total
    render json: '%.2f' % @total
  end

  private


  def coin_params
    params.require(:coin).permit(:id, :name, :value)
  end
end
