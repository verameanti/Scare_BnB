Rails.application.routes.draw do
  devise_for :users
  root to: 'ghosts#home'
  resources :ghosts do
  resources :hauntings, only: [:new, :create]
  end
  resources :hauntings, except: [:new, :create]
end
