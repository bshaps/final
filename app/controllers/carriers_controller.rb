class CarriersController < ApplicationController

	def index
		@carriers = Carrier.all
	end
	
	def show
		@carrier = Carrier.find(params[:id])
		if @carrier == nil
			redirect_to carriers_url, notice: "Carrier Not Found!"
		end
	end
	
	def create
		carrier = Carrier.new
		carrier.name = params[:name]
		carrier.mc_number = params[:mcnum]
		carrier.dot_number = params[:dotnum]
		carrier.save	

		redirect_to carriers_url, notice: "Carrier created"
	end
	
	def edit
		@carrier = Carrier.find(params[:id])
	end
	
	def update
		carrier = Carrier.find(params[:id])
		carrier.name = params[:name]
		carrier.mc_number = params[:mcnum]
		carrier.dot_number = params[:dotnum]
		carrier.save
		
		redirect_to carriers_url
	end
	
	def destroy
		Carrier.delete(params[:id])
		redirect_to carriers_url
	end
	
end