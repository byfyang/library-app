class SessionsController < ApplicationController
	
	#show the new user
	def new
		@user = User.new
		render :new
	end

	#create the session
	def create
		user_params= params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)

		if @user
			login(@user)
			redirect_to "/users/#{@user.id}"
		else
			redirect_to "/sign_in"
		end
	end

end
