Rails.application.routes.draw do

  root "sessions#new"

  resources :users, only: [:new, :create, :show]

  get '/sessions' => "sessions#new"

  post '/sessions' => "sessions#create"

end
