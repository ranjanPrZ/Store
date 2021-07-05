Rails.application.routes.draw do
  post '/cart' => 'carts#add_to_cart'
  post '/reply' => 'carts#reply'
  get '/cartItems' => 'carts#items_in_carts'
  get '/new_item' => 'items#new'
  post '/addItem' => 'items#create'
  root to: 'welcome#index'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'users/new'
  # get 'users/create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
end
