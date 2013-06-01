class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def list
  	@markets = Market.all
  end
  
  def show
    @market = Market.find(params[:id])
  end
end
