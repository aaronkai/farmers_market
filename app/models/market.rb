class Market < ActiveRecord::Base
  has_many :presences
  has_many :participations
  has_many :vendors, through: :participations
  
  attr_accessible :name, :address, :name, :url, :street, :city, :county, :state, :zip, :lat, :lon, :credit, :wic, :wcash, :sfmnp, :snap
  
  def self.import
    CSV.read(Rails.root + "db/markets.csv")[1 .. -1].each do |row|
      fmid, raw_name, url, street, city, county, state, zip, schedule, x, y, loc, credit, wic, wcash, sfmnp, snap, *blah = *row
      name = raw_name.gsub(/^[\d\.]+/, '').strip
      
      where(fmid: fmid).first_or_create(name: name, url: url, street: street, city: city, county: county, state: state, zip: zip, lat: x, lon: y, credit: credit, wic: wic, wcash: wcash, sfmnp: sfmnp, snap: snap)
      # use row here...
    end
  end
end