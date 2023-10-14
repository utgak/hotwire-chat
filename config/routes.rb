Rails.application.routes.draw do
  resources :messages, only: :create
  resources :rooms, only: %i[index create show]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  namespace :api do
    resources :rooms, only: :index
    resources :messages, only: :create
  end

  # Defines the root path route ("/")
  root "rooms#index"
end
