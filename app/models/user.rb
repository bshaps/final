class User < ActiveRecord::Base

	belongs_to :carrier

	has_secure_password
	validates :email, :uniqueness => true, :allow_nil => false
	validates :password, :presence => true, :confirmation => true
	validates :carrier_id, :presence => true
	

end
