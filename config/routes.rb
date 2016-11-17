Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/new' => "users#new"

  post 'users' => "users#create"

  get 'users/:id' => "users#show"

  get 'users/:id/albums/new' => "albums#new", as: 'users_albums_new'

end
