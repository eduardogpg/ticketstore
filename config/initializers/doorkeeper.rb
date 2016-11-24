Doorkeeper.configure do
  orm :active_record

  resource_owner_authenticator do
    #http://localhost:3000//oauth/authorize
    User.find_by_id(session[:user_id]) || redirect_to(root_path)
  end

  resource_owner_from_credentials do |routes|
    user = User.find_by(username: params[:username])
    if user && user.is_valid_password?(params[:password].to_s) 
      puts "Aqui si entro!"
      user
    end
  end
  
  use_refresh_token
  
end

Doorkeeper.configuration.token_grant_types << "password"
