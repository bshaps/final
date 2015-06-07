Rails.application.routes.draw do
  root 'drivers#index'
  
  get '/users/:user_id' => 'users#show', as: :user
  get '/register' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'

  resources :drivers
  
end
