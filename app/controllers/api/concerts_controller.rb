class Api::ConcertsController < Api::ApiController
  before_action :doorkeeper_authorize!
  before_action :authenticate_app

  def index
  	@concerts = Concert.all
  end

  def my
  end
  
end