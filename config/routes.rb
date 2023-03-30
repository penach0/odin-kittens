Rails.application.routes.draw do
  get '/kittens', to: 'kittens#index'
  get '/kittens/new', to: 'kittens#new'
  post '/kittens', to: 'kittens#create'
  get 'kittens/:id', to: 'kittens#show'
  get 'kittens/:id/edit', to: 'kittens#edit'
  patch 'kittens/;id', to: 'kittens#update'
  delete 'kittens/:id', to: 'kittens#destroy'

  root "kittens#index"
end
