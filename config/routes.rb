Rails.application.routes.draw do
  
  root :to => 'users#login'
  
  use_doorkeeper
  resources :concerts
  resources :users
  
  
  #======== OUAth endpoints =========
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
    #resources :concerts
    
    resources :concerts, only: [:index] do
      get :my, on: :collection
    end

  end
end
