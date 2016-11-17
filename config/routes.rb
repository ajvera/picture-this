Rails.application.routes.draw do

  root "sessions#new"

  resources :users, only: [:new, :create, :show]

  get 'users/:id/albums/new' => "albums#new", as: 'users_albums_new'

  post '/sessions' => "sessions#create"

  get '/sessions' => "sessions#new"


end
