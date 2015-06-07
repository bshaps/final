class DriversController < ApplicationController

	def index
		if session["user_id"].present?
			@drivers = Driver.where("carrier_id = ?", User.find_by(id: session["user_id"]).carrier_id)
		end
	end
	
	def new
		@driver = Driver.new
		render 'new'
	end
	
	def show
		@driver = Driver.find(params[:id])
		if @driver == nil
			redirect_to drivers_url, notice: "Driver Not Found!"
		end
	end
	
	def create
		if session["user_id"].present?
			@driver = Driver.new
			@driver.name = params[:name]
			@driver.carrier_id = User.find_by(id: session["user_id"]).carrier_id
			@driver.last_lat = params[:last_lat]
			@driver.last_long = params[:last_long]
			
			if @driver.save
				redirect_to drivers_url, notice: "Driver created"
			else
				render 'new'
			end
		else
			redirect_to root_url, notice: "You must be logged in to create a driver"
		end
		
	end
	
	def edit
		@driver = Driver.find(params[:id])
	end
	
	def update
		driver = Driver.find(params[:id])
		driver.name = params[:name]
		driver.last_lat = params[:last_lat]
		driver.last_long = params[:last_long]
		driver.save
		
		redirect_to drivers_url
	end
	
	def destroy
		Driver.delete(params[:id])
		redirect_to drivers_url
	end
	
end