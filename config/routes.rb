Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stars, only: [:index, :show, :new, :create, :edit, :update] do
    resources :missions, only: [:create]
    member do
      post 'performer'
    end
  end
  resources :missions, only: [:index, :show, :edit, :update, :destroy]
  namespace :contracts do
    resources :missions, only: [:index]
  end
  get '/stars/show/:id', to: 'stars#show_star', as: 'show_star'
  delete "stars/show/:id", to: "stars#destroy"
end
