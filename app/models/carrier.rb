class Carrier < ActiveRecord::Base

	has_many :carrier_locations
	has_many :drivers
	has_many :users
	
	validates :name, presence: true
	validates :mc_number, :dot_number, presence: true, numericality: {only_integer: true}

end