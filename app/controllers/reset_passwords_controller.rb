class ResetPasswordsController < ApplicationController

	def new
	end
	
	def show
	end
	
	def create
		user = User.find_by(email: params[:email])
		if user
			user.reset_password
			redirect_to root_url, notice: "Please check your e-mail for password reset instructions."
		else
			redirect_to root_url, notice: "No user found with the e-mail #{params[:email]}"
		end		
	end
	
	def destroy
	end
	
	def edit
	end
	
	def update
	end

end