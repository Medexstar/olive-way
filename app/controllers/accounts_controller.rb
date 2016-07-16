class AccountsController < ApplicationController
  before_action :require_log_in, except: [:account]

  def account
  end

  def account_hub
  end

  def edit_measurement
    @measurement = current_user.measurement
  end

  def update_measurement
    measurements = current_user.measurement
    measurements.update_attributes!(measurement_params)
    if measurements.save
        flash[:success] = "Changes saved successfully!"
      redirect_to measurements_path
    else
      if measurements.errors.any?
        flash[:error] = measurements.errors.full_messages[0]
      end
      redirect_to measurements_path
    end
  end

  def edit_addresses
    @user = current_user
    @shipping = @user.shipping_address
    @billing = @user.billing_address
  end

  def update_addresses
    @user = current_user
    if @user.update_attributes(address_params)
      if @user.save
          flash[:success] = "Changes saved successfully!"
        redirect_to profile_path
      else
        if @user.errors.any?
          flash[:error] = @user.errors.full_messages[0]
        end
        redirect_to profile_path
      end
    else
      if @user.errors.any?
        flash[:error] = @user.errors.full_messages[0]
      end
      redirect_to profile_path
    end
  end

  private

  def measurement_params
    params.require(:measurement).permit(:neck, :shoulder, :sleeve_length,
      :bicep, :wrist, :chest, :bust, :underbust,
      :back_length, :waist, :hips, :thigh, :rise, :outleg, :inleg, :ankle)
  end

  def address_params
    params.require(:user).permit(:sex,
      shipping_address_attributes: [:first_name, :last_name,
        :postcode, :suburb, :company, :state, :street, :country, :phone,
        :address_type, :id],
      billing_address_attributes: [:first_name, :last_name,
        :postcode, :suburb, :company, :state, :street, :country, :phone,
        :address_type, :id])
  end
end
