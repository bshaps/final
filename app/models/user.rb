class User < ActiveRecord::Base

	belongs_to :carrier

	has_secure_password
	validates :email, :uniqueness => true, :allow_nil => false
	validates :password, :allow_nil => false, :confirmation => true 
	#I removed presence because it was breaking the save in reset_password
	
	def reset_password
		self.update(reset_password_token: SecureRandom.urlsafe_base64.to_s)
		self.save
		UserMailer.reset_password_email(self).deliver
	end

end
