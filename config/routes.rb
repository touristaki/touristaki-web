Rails.application.routes.draw do  
  devise_for :partners

  root to: "home#index"

  namespace :partners do
    root to: 'home#index'
    get 'dashboard#index', to: 'dashboard#index', as: 'dashboard'
    resources :favorites, only: [:index]
    resources :profile, only: [:index]
    resources :tours, only: [:index, :new, :create]
    resources :favorites, only: [:index]
  end
  
  devise_for :users
end
