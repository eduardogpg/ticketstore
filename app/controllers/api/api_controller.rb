class Api::ApiController < ApplicationController
	
	private
		def authenticate_app
			@user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
		end

end