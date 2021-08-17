Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stars
  # resources :users do
  #   resources :stars
  #   resources :missions
  # end
  resources :missions
end
