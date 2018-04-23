class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new
  end

 
  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      SubscriptionMailer.with(subscription: @subscription).welcome_email.deliver_now
      respond_to do |format|
        format.js {}

        # Tell the UserMailer to send a welcome email after save

      end
    else 
     format.html { render action: 'new' }
     format.json { render json: @subscription.errors, status: :unprocessable_entity }

   end
 end
 

  private

    def subscription_params
      params.require(:subscription).permit(:email)
    end

end