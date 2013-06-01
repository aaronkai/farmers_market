class Market < ActiveRecord::Base
  has_many :presences
  has_many :participations
  has_many :vendors, through: :participations
  
  attr_accessible :name, :address, :ebt
end