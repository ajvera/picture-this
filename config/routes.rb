Rails.application.routes.draw do

  root "sessions#new"

  resources :users, only: [:new, :create, :show] do 
  	resources :albums, shallow: true do 
  		resources :photos, shallow: true
  	end 
  end 

resources :sessions, only: [:new, :create, :destroy ]

end
