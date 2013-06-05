# FarmersFeed.us

## Description 

FarmersFeed.us is a Ruby on Rails 3.2 app with Postgres database, using Devise, Omniauth-Facebook, Twitter Bootstrapp (Sass), the Google Maps API and a sprinkle of CoffeeScript. Made for the National Day of Civic Hacking "Hack for Food" Asheville hackathon, organized by Code for Asheville (http://codeforasheville.org)

A live demo is online here: http://farmersfeed.us

## Setup
1. bundle install
2. bundle exec rake db:migrate
3. foreman start
4. http://localhost:5000

Comes with some local Western NC data in CSV. To prepopulate, run `bundle exec rake db:seed` (this will also populate a couple test users)

License
-------
MIT License