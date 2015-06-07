class State < ActiveRecord::Base

	has_many :citys
	
	validates_presence_of :state_name

end