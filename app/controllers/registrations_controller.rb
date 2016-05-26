class RegistrationsController < Devise::RegistrationsController
  
  # GET /register
  def new
  	@user = User.new
  	logger.info "new register"
  end

  def create
	  	@user = User.new(user_params)
	    if @user.save
	    	logger.info "testsuccess"
	    	redirect_to root_path
	      flash[:notice] = "You Signed up successfully"
	      flash[:color]= "valid"
	    else
	      flash[:notice] = "Form is invalid"
	      flash[:color]= "invalid"
	    end
   end
  
  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end