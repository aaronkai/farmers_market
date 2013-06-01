class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :market
  
  attr_accessible :user_id, :market_id, :sms, :email
end