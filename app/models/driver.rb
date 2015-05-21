class Driver < ActiveRecord::Base

	belongs_to :carriers
	validates_presence_of :name
	
end