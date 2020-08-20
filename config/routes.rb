Rails.application.routes.draw do
  resources :users
  resources :registers
  resources :tournaments, only: [:index, :show]
  root 'static#home'

  get "/signup", to: "users#new" 
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new" 
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"
  
  get "/auth/github/callback", to: "sessions#github"
  
  resources :users do
    resources :registers, only: [:index, :show, :edit, :new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
