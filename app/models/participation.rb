class Participation < ActiveRecord::Base
  belongs_to :market
  belongs_to :vendor
  
  has_many :presences
  has_many :subscriptions
  has_many :users, through: :subscriptions
  
  def subscribed?(user)
    users.include? user
  end
end