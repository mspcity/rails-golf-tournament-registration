Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :registers
  resources :tournaments
  root 'static#home'

  # GET "/auth/users/github/callback", to: 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
