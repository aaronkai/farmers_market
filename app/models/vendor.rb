class Vendor < ActiveRecord::Base
  belongs_to :user
  has_many :participations
  has_many :markets, through: :participations
  
  attr_accessible :name, :user_id
end