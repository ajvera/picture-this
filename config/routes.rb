Rails.application.routes.draw do

  root "sessions#new"

  resources :users, only: [:new, :create, :show]

  post '/sessions' => "sessions#create"

  get '/sessions' => "sessions#new"


end
