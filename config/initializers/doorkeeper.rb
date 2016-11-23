Doorkeeper.configure do
  orm :active_record

  resource_owner_authenticator do
    #Para probar esto debemos de ir a la siguiente URL : http://localhost:3000//oauth/authorize
    #Funciona cuando nos logueamos
    User.find_by_id(session[:user_id]) || redirect_to(root_path)
  end

  resource_owner_from_credentials do |routes|
    user = User.find_by(username: params[:username])
    if user && user.encrypted_password == params[:password].to_s
      user
    end
  end

  use_refresh_token
  
end

Doorkeeper.configuration.token_grant_types << "password"
