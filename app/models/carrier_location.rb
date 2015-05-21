class CarrierLocation < ActiveRecord::Base
	
	belongs_to :carriers
	has_one :cities
	has_one :states
	
	validates :carrier_id, :city, :state, :zip, presence: true, numericality: {only_integer: true}
	validates :street_addr, presence: true	
	
end