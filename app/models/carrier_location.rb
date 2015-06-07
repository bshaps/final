class CarrierLocation < ActiveRecord::Base
	
	belongs_to :carrier
	has_one :city
	has_one :state
	
	validates :carrier_id, :city_id, :state_id, :zip, presence: true, numericality: {only_integer: true}
	validates :street_addr, presence: true	
	
end