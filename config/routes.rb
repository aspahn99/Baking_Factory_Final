Rails.application.routes.draw do
  
  # Routes for main resources
  resources :addresses
  resources :customers
  resources :orders
  resources :items

  # Authentication routes
  resources :users
  resources :sessions
  get 'user/edit' => 'users#edit', :as => :edit_current_user
  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login
  get 'logout' => 'sessions#destroy', :as => :logout

  # Semi-static page routes
  get 'home' => 'home#home', as: :home
  get 'about' => 'home#about', as: :about
  get 'contact' => 'home#contact', as: :contact
  get 'privacy' => 'home#privacy', as: :privacy
  get 'home/search', to: 'home#search', as: :search

  # Routes for item prices 
  # need for order items?
  get 'item_prices/new', to: 'item_prices#new', as: :new_item_price
  post 'item_prices', to: 'item_prices#create', as: :item_prices
  
  # Set the root 
  root 'home#home'

  # post 'orders/add_item_to_cart/:id', to: 'orders#add_item_to_cart', as: 'add_item_to_cart'
  # get 'orders/:id/add_item_to_cart', to: 'orders#add_item_to_cart', as: 'add_item_to_cart'
  # get 'orders/:item_id/add_item_to_cart', to: 'orders#add_item_to_cart', as: 'add_item_to_cart'
  get 'orders/:item_id/add_to_cart', to: 'orders#add_to_cart', as: 'add_to_cart'

  # get 'orders/:item_id/add_to_cart', to: 'orders#add_to_cart', as: 'add_to_cart'

  get 'orders/:item_id/remove_from_cart', to: 'orders#remove_from_cart', as: 'remove_from_cart'

  get 'customer/search', to: 'customers#search', as: :customer_search
  get 'items/search', to: 'items#search', as: :item_search







  
end
