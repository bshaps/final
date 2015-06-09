class User < ActiveRecord::Base

	belongs_to :carrier

	has_secure_password
	validates :email, :uniqueness => true, :allow_nil => false
	validates :password, :presence => true, :confirmation => true
	validates :carrier_id, :presence => true
	
	def reset_password
		self.reset_password_token = SecureRandom.urlsafe_base64.to_s
		self.save
		UserMailer.reset_password_email(self).deliver
	end

end
