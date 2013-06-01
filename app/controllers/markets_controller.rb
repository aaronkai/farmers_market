class MarketsController < ApplicationController
  def index
    @vendors = Market.all
  end
  
  def show
    @vendor = Market.find(params[:id])
  end
end