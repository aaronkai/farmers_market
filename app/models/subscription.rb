class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :participation
  
  attr_accessible :user_id, :participation_id
end