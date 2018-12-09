Rails.application.routes.draw do
  get 'product_comparisons/show'
  root to: 'static_pages#home'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '/comparisons', to: 'product_comparisons#show'
  get '/products_json', to: 'products#index_json'
  post '/compare', to: 'product_comparisons#compare'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :products
  resources :makers
  resources :reviews
  resources :comments
  get "/results", to: "results#index", as: 'results'
  mount Ckeditor::Engine => '/ckeditor'
end
