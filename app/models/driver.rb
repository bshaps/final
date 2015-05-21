class Driver < ActiveRecord::Base

	belongs_to :carriers
	validates_presence_of :name
	validates :last_lat, :last_long, numericality: true
	
end