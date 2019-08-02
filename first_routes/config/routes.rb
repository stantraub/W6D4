Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

  # get '/users', to: 'users#index'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/users/:id', to: 'users#show', as: 'user'
  # put 'users/:id', to: 'users#update'
  # post '/users', to: 'users#create'
  # patch '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'

  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :artworks, only: [:index] 
  end
  resources :artworks, only: [:create, :destroy, :show, :update] 
  resources :artwork_shares, only: [:create, :destroy]
  resource :comments, only: [:create, :destroy, :index]
end
