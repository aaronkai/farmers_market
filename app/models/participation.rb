class Participation < ActiveRecord::Base
  belongs_to :market
  belongs_to :vendor
end