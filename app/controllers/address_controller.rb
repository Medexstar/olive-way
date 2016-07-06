class AddressController < ApplicationController
  before_action :require_log_in

  def edit
    @user = current_user
    @shipping = @user.shipping_address
    @billing = @user.billing_address
  end

  def update
    shipping = current_user.shipping_address
    shipping.first_name = params[:ship_first_name] || ""
    shipping.last_name = params[:ship_last_name] || ""
    shipping.postcode = params[:ship_postcode] || ""
    shipping.suburb = params[:ship_suburb] || ""
    shipping.company = params[:ship_company] || ""
    shipping.state = params[:ship_state] || ""
    shipping.street = params[:ship_street] || ""
    shipping.country = params[:ship_country] || ""
    shipping.phone = params[:ship_phone] || ""
    shipping.address_type = params[:ship_type] || 1

    billing = current_user.billing_address
    billing.first_name = params[:bill_first_name] || ""
    billing.last_name = params[:bill_last_name] || ""
    billing.postcode = params[:bill_postcode] || ""
    billing.suburb = params[:bill_suburb] || ""
    billing.company = params[:bill_company] || ""
    billing.state = params[:bill_state] || ""
    billing.street = params[:bill_street] || ""
    billing.country = params[:bill_country] || ""
    billing.phone = params[:bill_phone] || ""
    billing.address_type = params[:bill_type] || 1

    if shipping.save && billing.save
        flash[:success] = "Changes saved successfully!"
      redirect_to profile_path
    else
      if shipping.errors.any?
        flash[:error] = shipping.errors.full_messages[0]
      elsif billing.errors.any?
        flash[:error] = billing.errors.full_messages[0]
      end
      redirect_to profile_path
    end
  end
end
