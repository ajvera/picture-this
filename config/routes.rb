Rails.application.routes.draw do

  root "sessions#new"

<<<<<<< HEAD
  resources :users, only: [:new, :create, :show]
=======
  get 'users/:id/albums/new' => "albums#new", as: 'users_albums_new'

  post '/sessions' => "sessions#create"
>>>>>>> 2bf02a38ea64cc51bf7d3fb346417d9fc3216a77

  get '/sessions' => "sessions#new"

  post '/sessions' => "sessions#create"

end
