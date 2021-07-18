Rails.application.routes.draw do
  # Answers routes
  get 'answers/new'
  post 'answers/create'
  delete 'answers/destroy'
  put 'answers/edit'

  # Questions routes
  get '/question/new' =>'questions#new'
  get '/question/:id' =>'questions#show'
  post '/question/create' =>'questions#create'
  delete '/question/delete' =>'questions#destroy'

  post '/cart' => 'carts#add_to_cart'
  post '/reply' => 'carts#reply'
  get '/cartItems' => 'carts#items_in_carts'
  get '/new_item' => 'items#new'
  post '/addItem' => 'items#create'
  root to: 'welcome#index'
  get '/discussions' => 'welcome#discussion'

  # Sessions routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # Users routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
end
