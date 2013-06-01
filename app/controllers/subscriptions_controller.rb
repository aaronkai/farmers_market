class SubscriptionsController < ApplicationController
  def create
    @subscription = current_user.subscriptions.where(market_id: params[:market_id], vendor_id: params[:vendor_id]).first_or_create
  end
end