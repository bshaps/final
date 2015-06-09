class Driver < ActiveRecord::Base
	
	has_and_belongs_to_many :tractors, :join_table => "drivers_tractors"
	belongs_to :carrier
	validates_presence_of :name
	validates :last_lat, :last_long, numericality: true
	
end