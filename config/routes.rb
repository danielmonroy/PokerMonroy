Rails.application.routes.draw do
  resources :resume
  resources :poker_games
  resources :homes
  resources :poker_players
  devise_for :admin
  # For details on he DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'resume#index'
end
