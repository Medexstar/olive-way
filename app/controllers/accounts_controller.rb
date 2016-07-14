class AccountsController < ApplicationController
  before_action :require_log_in, except: [:account]

  def account
    redirect_to landing_path if user_signed_in?
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
    params.require(:measurement).permit(:shoulder, :half_chest, :half_jacket_waist,
      :half_hem, :back_length, :sleeve_outstem, :bicep, :pant_outseam, :half_pant_waist,
      :half_bottom, :crotch, :thigh, :hip)
  end

  def address_params
    params.require(:user).permit(
      shipping_address_attributes: [:first_name, :last_name,
        :postcode, :suburb, :company, :state, :street, :country, :phone,
        :address_type, :id],
      billing_address_attributes: [:first_name, :last_name,
        :postcode, :suburb, :company, :state, :street, :country, :phone,
        :address_type, :id])
  end
end
