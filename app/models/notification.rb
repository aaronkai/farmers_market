class Notification < ActiveRecord::Base
  belongs_to :subscription
  belongs_to :presence
  
  attr_accessible :subscription_id, :presence_id, :subscription, :presence
  
  before_create :deliver
  
  def deliver
    Notifier.presence_message(subscription.user.email, presence).deliver
  end
end