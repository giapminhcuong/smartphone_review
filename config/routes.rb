Rails.application.routes.draw do
  root to: 'static_pages#home'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :products
  resources :makers
  resources :reviews
  resources :comments
  get "/results", to: "results#index", as: 'results'
end
