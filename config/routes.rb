Rails.application.routes.draw do  
  devise_for :partners

  root to: "home#index"

  namespace :partners do
    root to: 'home#index'
    get 'dashboard#index', to: 'dashboard#index', as: 'dashboard'
  end
  
  devise_for :users
end
