Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :primary_titles, only: [:show]
  #devise_for :users
  #resources :users
end
