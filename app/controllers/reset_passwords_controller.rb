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
		@user = User.find_by(reset_password_token: params[:id])
		if !@user
			redirect_to root_url, notice: "Invalid token"
		end	
	end
	
	def update
		@user = User.find_by(reset_password_token: params[:id])
		if @user
			@user.password = params[:password]
			@user.password_confirmation = params[:password_confirmation]
			@user.save!
			redirect_to root_url, notice: "Password Reset"
		else
			redirect_to root_url, notice: "Error resetting password"
		end
	end

end