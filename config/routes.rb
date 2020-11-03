Rails.application.routes.draw do

  post '/auth', to: 'auth#create'
  resources :approvals
  resources :photos
  resources :collaborations
  resources :collections
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
