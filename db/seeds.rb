# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user   = User.create(email: 'user@test.com',   password: 'testme', password_confirmation: 'testme')
v_user = User.create(email: 'vendor@test.com', password: 'testme', password_confirmation: 'testme')

Market.import
Vendor.import

Vendor.all.each{ |vendor| vendor.participations.first.presences.first_or_create(date: Date.today + rand(10), message: "Zomgerz I'm selling food!") }

# Market.create(name: 'Test Market', address: '1 Main St, 28801')
# vendor = Vendor.create(name: "Joe's Veggies", user_id: v_user.id)
# vendor.markets << Market.first
# 
# vendor = Vendor.first
# user.participations << vendor.participations.first
# 
# vendor.participations.first.presences.create(message: "Will hack for food", date: Date.today)