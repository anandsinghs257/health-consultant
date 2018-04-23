class SubscriptionMailer < ApplicationMailer
	 default from: "from@example.com"
  layout 'mailer'
 
  def welcome_email
    @subscription = params[:subscription]
    @url  = 'http://example.com/login'
    mail(to: @subscription.email, subject: 'Welcome to My Awesome Site')
end
end
