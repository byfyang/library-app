class UsersController < ApplicationController
	#shows the users
	def index
		@users = User.all
		render :index
	end

	#new user
	def new
		@user = User.new
		render :new
	end

	#create a new user on the /new/user form
	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
		@user = User.create(user_params)

		redirect_to "/users"
	end

	def show
		@user = User.find(params[:id])
		render :show
	end
	

end
