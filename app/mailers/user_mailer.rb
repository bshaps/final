class UserMailer < ActionMailer::Base
  default from: "support@final.com"
  
  def reset_password_email(user)
	@user = user
	@url = "http://localhost:3000/reset_passwords/#{@user.reset_password_token}/edit"
	mail(to: @user.email, subject: "Password Reset")
  end
  
end
