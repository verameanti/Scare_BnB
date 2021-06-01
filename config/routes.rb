Rails.application.routes.draw do
  devise_for :users
  root to: 'ghosts#home'
   # resources :ghosts
end
