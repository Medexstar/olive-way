class AddressController < ApplicationController
  #before_action :require_log_in

  def edit
    #user = current_user
    user = User.first
    @shipping = user.shipping_address
    @billing = user.billing_address
  end

  def updated
  end
end
