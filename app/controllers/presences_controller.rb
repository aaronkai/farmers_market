class PresencesController < ApplicationController
  def create
    @vendor = Vendor.find(params[:vendor_id])
    @presence = @vendor.presences.where(market_id: params[:market_id], date: params[:date]).first_or_create
    
    redirect_to @presence
  end
end
