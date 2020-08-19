Rails.application.routes.draw do
  resources :registers
  resources :tournaments
  root 'static#home'
  # resources :users

  get "/signup", to: "users#new" 
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new" 
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
