class DriversController < ApplicationController

	before_action :check_login, only: [:new, :create, :edit, :update, :destroy] 
	before_action :authorization, only: [:show, :destroy, :edit, :update]
	
	def authorization
		user = User.find_by(id: session["user_id"])
		driver = Driver.find_by(id: params[:id])
		
		if user.carrier_id != driver.carrier_id || user.blank?
			redirect_to root_url, notice: "You aren't authorized to interact with that account"
		end		
		
	end
	
	def check_login		
		if !session["user_id"].present?
			redirect_to root_url, notice: "You must be signed in to access that page"
		end
	end

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
		@driver = Driver.new
		@driver.name = params[:name]
		@driver.carrier_id = User.find_by(id: session["user_id"]).carrier_id
		@driver.last_lat = params[:last_lat]
		@driver.last_long = params[:last_long]
		
		if params[:flat_bed]
			@driver.tractors << Tractor.where(:id => 1)
		end		
		
		if params[:dry_van]
			@driver.tractors << Tractor.where(:id => 2)
		end		
		
		if params[:refrigerated]
			@driver.tractors << Tractor.where(:id => 3)
		end		
		
		if params[:lowboy]
			@driver.tractors << Tractor.where(:id => 4)
		end	
		
		if params[:step_deck]
			@driver.tractors << Tractor.where(:id => 5)
		end	
		
		if params[:extendable_flatbed]
			@driver.tractors << Tractor.where(:id => 6)
		end		
		
		if @driver.save
			redirect_to drivers_url, notice: "Driver created"
		else
			render 'new'
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
		driver.tractors.delete_all
		
		if params[:flat_bed]
			driver.tractors << Tractor.where(:id => 1)
		end		
		
		if params[:dry_van]
			driver.tractors << Tractor.where(:id => 2)
		end		
		
		if params[:refrigerated]
			driver.tractors << Tractor.where(:id => 3)
		end		
		
		if params[:lowboy]
			driver.tractors << Tractor.where(:id => 4)
		end	
		
		if params[:step_deck]
			driver.tractors << Tractor.where(:id => 5)
		end	
		
		if params[:extendable_flatbed]
			driver.tractors << Tractor.where(:id => 6)
		end	
		
		if driver.save
			redirect_to drivers_url, notice: "Driver updated"
		else
			render 'edit'
		end
	end
	
	def destroy
		Driver.delete(params[:id])
		redirect_to drivers_url
	end
	
end