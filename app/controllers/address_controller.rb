class AddressController < ApplicationController
  before_action :require_log_in

  def edit
    @user = current_user
    @shipping = @user.shipping_address
    @billing = @user.billing_address
  end

  def update
    binding.pry
    shipping = current_user.shipping_address
    shipping.first_name = params[:ship_firt_name] || ""
    shipping.last_name = params[:ship_last_name] || ""
    shipping.postcode = params[:ship_postcode] || ""
    shipping.suburb = params[:ship_suburb] || ""
    shipping.company = params[:ship_company] || ""
    shipping.state = params[:ship_state] || ""
    shipping.street = params[:ship_street] || ""
    shipping.country = params[:ship_country] || ""
    shipping.phone = params[:ship_phone] || ""

    billing = current_user.billing_address
    billing.first_name = params[:bill_firt_name] || ""
    billing.last_name = params[:bill_last_name] || ""
    billing.postcode = params[:bill_postcode] || ""
    billing.suburb = params[:bill_suburb] || ""
    billing.company = params[:bill_company] || ""
    billing.state = params[:bill_state] || ""
    billing.street = params[:bill_street] || ""
    billing.country = params[:bill_country] || ""
    billing.phone = params[:bill_phone] || ""

    if shipping.save! && billing.save!
      redirect_to profile_path
    else
      flash[:error] = "Could not save the changes"
      redirect_to profile_path
    end
  end
end
