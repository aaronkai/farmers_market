class Presence < ActiveRecord::Base
  belongs_to :participation
  has_many :notifications
  
  delegate :subscriptions, :market, :vendor, to: :participation
  attr_accessible :market_id, :vendor_id, :date, :message
  
  def self.send_notifications
    all.each(&:send_notifications)
  end
  
  def send_notifications
    subscriptions.each do |subscription|
      notifications.where(subscription_id: subscription.id).first_or_create
    end
  end
end