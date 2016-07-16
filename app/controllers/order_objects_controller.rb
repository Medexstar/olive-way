class OrderObjectsController < ApplicationController
  before_action :require_log_in

  def new
    @user = current_user
    @order_object = OrderObject.new
    @measurement = @user.measurement
    @order_object.measurement ||= Measurement.new
    if params.has_key?(:suit_id)
      @order_object.suit = Suit.find(params[:suit_id])
    end
  end

  def create
    if params.has_key?(:suit_id)
      @order_object = OrderObject.new(order_object_params)
      @order_object.suit = Suit.find(params[:suit_id])
      @order_object.price = @order_object.suit.unit_price
    else
      @order_object = OrderObject.new()
      @order_object.accessory = Accessory.find(params[:accesory_id])
      @order_object.price = @order_object.accessory.unit_price
    end

    if params.has_key?(:promo_code)
      @order_object.price *= 0.9
    end

    @order_object.user = current_user
    @order_object.status = 0

    if @order_object.save
      flash[:notice] = 'Success! New Item Added to Cart!'
    else
      flash[:alert] = "Oops! Invalid input. #{@offer.errors.full_messages.join('. ')}"
    end
    redirect_to landing_path
  end

  def destroy
    @order_object = OrderObject.find(params[:id])
    @order_object.destroy
    redirect_to checkout_path
  end

  private

  def order_object_params
    params.require(:order_object).permit(:jacket_lapels, :jacket_vents,
      :jacket_buttons, :status, measurement_attributes: [:neck, :shoulder, :sleeve_length,
        :bicep, :wrist, :chest, :bust, :underbust,
        :back_length, :waist, :hips, :thigh, :rise, :outleg, :inleg, :ankle])
  end
end
