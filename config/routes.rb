Rails.application.routes.draw do
  root 'carriers#index'
  
  get '/carriers/new' => 'carriers#new'
  post '/carriers' => 'carriers#create'
  get '/carriers' => 'carriers#index'
  get '/carriers/:id' =>  'carriers#show', :as => 'carrier'
  get '/carriers/:id/edit' => 'carriers#edit'
  patch '/carriers/:id' => 'carriers#update'
  delete '/carriers/:id' => 'carriers#destroy'

end
