Rails.application.routes.draw do

  root "sessions#new"

  resources :users, only: [:new, :create, :show]
  
  resources :albums do 
  	resources :pictures
  end 
  

resources :sessions, only: [:new, :create, :destroy ]

end
