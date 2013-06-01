# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'test@me.com', password: 'testme', password_confirmation: 'testme')

Market.import
# Market.create(name: 'Test Market', address: '1 Main St, 28801')
Vendor.create(name: "Joe's Veggies", user_id: user.id)

Vendor.first.markets << Market.first