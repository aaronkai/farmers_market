class Presence < ActiveRecord::Base
  belongs_to :market
  belongs_to :vendor
  
  attr_accessible :market_id, :vendor_id, :available
end