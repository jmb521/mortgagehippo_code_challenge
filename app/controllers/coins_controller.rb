class CoinsController < ApplicationController
  before_action :set_coin, only: [show, edit]
  def index
    @coins = Coin.all

    render json: @coins
  end

  def show
    render json: @coin
  end

  def new
    @coin = Coin.new
  end

  def create
    @coin = Coin.create(coin_params)
  end

  def edit

  end

  def update
    @coin.update(coin_params)
  end

  private

  def set_coin
    @coin = Coin.find_by(:id => params[:id])
  end

  def coin_params
    Params.require(:coin).permit(:name, :value)
  end
end
