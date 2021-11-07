Rails.application.routes.draw do
  devise_for :partners

  root to: "home#index"

  namespace :partners do
    root to: 'home#index'
    get 'dashboard#index', to: 'dashboard#index', as: 'dashboard'
    resources :favorites, only: [:index]
    resources :profile, only: [:index]
    resources :road_maps, only: [:index, :new, :create, :show]
    resources :tours
    resources :favorites, only: [:index]
  end
  
  devise_for :users
end
