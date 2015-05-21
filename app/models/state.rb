class State < ActiveRecord::Base

	has_many :cities
	
	validates_presence_of :state_name

end