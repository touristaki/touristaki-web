Rails.application.routes.draw do
  devise_for :partners

  root to: 'home#index'

  namespace :partners do
    root to: 'home#index'

    get 'dashboard#index', to: 'dashboard#index', as: 'dashboard'

    resources :partner_informations, only: [:index, :edit, :update]
    resources :road_maps, only: [:index, :new, :create, :show]

    resources :tours do
      get 'scheduled', on: :collection
      get 'accomplished_list', on: :collection
      get 'closed_list', on: :collection
      post 'processing', on: :member
      post 'closed', on: :member
      post 'accomplished', on: :member
    end

    resources :favorites, only: [:index]
  end

  devise_for :users

  namespace :admin do
    resources :users
  end
end
