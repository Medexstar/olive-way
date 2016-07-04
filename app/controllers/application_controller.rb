class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :store_current_location, unless: :devise_controller?
  before_action :config_permit_params, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

  def config_permit_params
    added_attrs = [:username, :email, :password, :password_confirmationm, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  private
  def store_current_location
    store_location_for(:user, request.url)
  end

  def after_sign_out_path_for(resource)
    request.referrer || landing_path
  end
end
