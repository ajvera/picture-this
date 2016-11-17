Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/new' => "users#new"

  post 'users' => "users#create"

  get 'users/:id' => "users#show"

  root '/' => "sessions#new"

end
