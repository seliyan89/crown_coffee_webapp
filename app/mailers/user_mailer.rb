class UserMailer < ApplicationMailer
 default from: 'seliyan12@hotmail.com'
 
  def order_notification_email
    @user = params[:user]
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
