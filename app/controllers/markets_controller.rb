class MarketsController < ApplicationController
  def index
    @markets = Market.limit(10)
  end

  def list
  	@markets = Market.all
  end
  
  def show
    @market = Market.find(params[:id])
  end
end
