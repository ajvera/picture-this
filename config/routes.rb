Rails.application.routes.draw do

  root "sessions#new"

  get 'users/new' => "users#new"

  post 'users' => "users#create"

  get 'users/:id' => "users#show"

  post '/sessions' => "sessions#create"

  get '/sessions' => "sessions#new"


end
