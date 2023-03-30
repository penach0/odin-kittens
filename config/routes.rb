Rails.application.routes.draw do
  get '/kittens', to: 'kittens#index', as: 'kittens'
  get '/kittens/new', to: 'kittens#new', as: 'new_kitten'
  post '/kittens', to: 'kittens#create'
  get 'kittens/:id', to: 'kittens#show', as: 'kitten'
  get 'kittens/:id/edit', to: 'kittens#edit', as: 'edit_kitten'
  patch 'kittens/:id', to: 'kittens#update'
  delete 'kittens/:id', to: 'kittens#destroy'

  root "kittens#index"
end
