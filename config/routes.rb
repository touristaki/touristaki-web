Rails.application.routes.draw do
  devise_for :partners
  
  root to: "home#index"

  namespace :partners do
    root 'dashboard#index'
  end
  
  devise_for :users
end
