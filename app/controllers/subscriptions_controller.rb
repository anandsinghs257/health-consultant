class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      respond_to do |format|
        format.js {}
      end
    else 
      render 'new'
    end
  end

  private

    def subscription_params
      params.require(:subscription).permit(:email)
    end

end