class SubscriptionsController < ApplicationController
  def create
    @subscription = current_user.subscriptions.where(participation_id: params[:participation_id]).first_or_create
    
    render :json => @subscription
  end
  
  def destroy
    @subscription = current_user.subscriptions.where(participation_id: params[:id]).first.try :destroy
    
    render :json => @subscription
  end
end