class Vendor < ActiveRecord::Base
  belongs_to :user
  has_many :participations
  has_many :markets,    through: :participations
  has_many :presences,  through: :participations
  
  attr_accessible :name, :user_id, :phone, :description, :products
  
  def self.import
    CSV.read(Rails.root + "db/vendors.csv")[1 .. -1].each do |fmid, mname, vname, phone, desc, products|
      next unless market = Market.where(fmid: fmid).first
      vendor = where(name: vname).first_or_create(phone: phone, description: desc, products: products)
      
      market.participations.where(vendor_id: vendor.id).first_or_create
    end
  end
end