class Presence < ActiveRecord::Base
  belongs_to :participation
  has_many :notifications
  
  delegate :subscriptions, to: :participation
  attr_accessible :market_id, :vendor_id, :date, :message
  
  def self.send_notifications
    all.each(&:send_notifications)
  end
  
  def send_notifications
    
  end
end