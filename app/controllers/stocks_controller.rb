class StocksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_stock, only: %i[edit update show destroy]

  def index
    if current_user
      @stocks = current_user.stocks
    else
    end
  end

  def new
    @stock = current_user.stocks.new
  end

  def create
    @stock = current_user.stocks.create(stock_params)
    if @stock.valid?
      flash[:notice] = 'Successfully created.'
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @calculation = StockProductivityCalculator.new(@stock)
  end

  def edit; end

  def update
    if @stock.update(stock_params)
      flash[:notice] = 'Successfully updated.'
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @stock.destroy
    flash[:notice] = 'Successfully deleted.'
    redirect_to root_path
  end

  private

  def set_stock
    @stock = current_user.stocks.find(params[:id])
  end

  def stock_params
    params.require(:stock).permit(:name, :duration, :price, :interest)
  end
end
