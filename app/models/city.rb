class City < ActiveRecord::Base

	belongs_to :state
	
	validates_presence_of :state_id
	validates_presence_of :city_name

end