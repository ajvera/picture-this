Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/new' => "users#new"

  post 'users' => "users#create"

  get 'users/:id' => "users#show", as: 'users_show'

  get 'sessions/new' => "sessions#new", as: 'sessions_new'

  get 'users/:id/albums/new' => "albums#new", as: 'users_albums_new'

  post '/sessions' => "sessions#create"

  get '/sessions' => "sessions#new"



  root "sessions#new"

end
