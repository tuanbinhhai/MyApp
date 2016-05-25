class RegistrationsController < Devise::RegistrationsController
  
  # GET /register
  def new
  	@user = User.new
  end

  def create
  	
  	logger.info ('tesssssss')
  end

end