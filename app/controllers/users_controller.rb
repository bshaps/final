class UsersController < ApplicationController

	before_action :populate_list
	before_action :authorization, only: [:show]

	def new			
		@user = User.new
	end
	
	def populate_list	
		@carrier_list = Carrier.all.map{|c| [c.name, c.id]}
	end
	
	def create
		h = params.permit(:email,:password,:password_confirmation,:carrier_id)
		@user = User.new(h)
			
		if @user.save
			redirect_to root_url, notice: "Welcome to BridgeHaul"
		else
			render "new"
		end
	end
	
	def show
		@carrier = Carrier.find_by(id: User.find_by(id: params[:user_id]).carrier_id)
		@locations = CarrierLocation.where("carrier_id = ?", @carrier.id)
	end
	
	def authorization
		user = User.find_by(id: params[:user_id])
		
		if user.id != session[:user_id] || user.blank?
			redirect_to root_url, notice: "You aren't authorized to view that account"
		end		
		
	end

end