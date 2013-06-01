FarmersMarket::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => 'markets#index'
  
  resources :markets do
  	get :list, on: :collection
  end

  resources :subscriptions, :vendors
end
