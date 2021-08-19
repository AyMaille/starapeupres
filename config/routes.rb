Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stars, only: [:index, :show, :edit, :update, :new, :create] do
    resources :missions, only: [:create]
  end
  resources :missions, only: [:index, :show, :edit, :update, :destroy]
  namespace :contracts do
    resources :missions, only: [:index]
  end
  get '/stars/show/:id', to: 'stars#show_star', as: 'show_star'
end
