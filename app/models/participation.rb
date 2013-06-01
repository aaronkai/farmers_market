class Participation < ActiveRecord::Base
  belongs_to :market
  belongs_to :vendor
  
  has_many :presences
  has_many :subscriptions
end