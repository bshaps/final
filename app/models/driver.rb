class Driver < ActiveRecord::Base

	belongs_to :carrier
	validates_presence_of :name
	validates :last_lat, :last_long, numericality: true
	
end