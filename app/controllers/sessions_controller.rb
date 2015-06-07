class SessionsController < ApplicationController

	def new	
	end
	
	def create
		user = User.find_by(email: params[:email])
		
		if user
			if user.authenticate(params[:password])
				session[:user_id] = user.id
				redirect_to root_url, notice: "Login successful"
			else
				redirect_to root_url, notice: "Incorrect login"
			end
		else
			redirect_to root_url, notice: "Incorrect login"
		end		
	end

	def destroy
		reset_session
		redirect_to root_url, notice: "Logout successful, come back soon!"
	end
	
end
