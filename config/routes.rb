Rails.application.routes.draw do
  root :to => 'users#login'
  
  use_doorkeeper
  resources :concerts
  resources :users
  
  get "/login", to: "users#login"

  # GET       /oauth/authorize/:code
  # GET       /oauth/authorize
  # POST      /oauth/authorize
  # DELETE    /oauth/authorize
  # POST      /oauth/token
  # POST      /oauth/revoke
  # resources /oauth/applications
  # GET       /oauth/authorized_applications
  # DELETE    /oauth/authorized_applications/:id
  # GET       /oauth/token/info

  #======== API =========
  namespace :api, defaults: { format: "json"  } do
    resources :concerts, controller: :concerts, as: :root
  end
end
