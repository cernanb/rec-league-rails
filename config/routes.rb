Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :teams, only: [:show] do 
    resources :seasons, only: [:show]
  end

  resources :leagues, only: [:new, :create, :show] do
    resources :matches, only: [:new, :create]
    resources :seasons, only: [:show] do
      get '/scoreboard', to: "seasons#scoreboard"
      resources :weeks, only: [:show] 
      resources :games, only: [:new, :create]
    end
  end

  resources :seasons, only: [] do
    resources :games, only: [:new, :create]
  end
  
  resources :users, only: [:show]
  root "pages#welcome"
  get "/leaders", to: "pages#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
