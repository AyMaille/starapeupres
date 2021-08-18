Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stars, only: [:index, :show, :edit, :update] do
    resources :missions, only: [:create]
  end# resources :users do
  #   resources :stars
  #   resources :missions
  # end
  resources :missions, only: [:index, :show, :update, :destroy]
  namespace :contracts do
    resources :missions, only: [:index]
  end
end
