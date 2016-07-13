class OrdersController < ApplicationController
  before_action :require_log_in

  def index
    @orders = Order.checked_out current_user
  end

  def checkout
      @order_objects = OrderObject.pending(current_user);
      @total_price = 0
      @order_objects.find_each do |order_object|
          order_object.suit != nil ? @total_price += (order_object.suit.formatted_cost * order_object.suit.quantity)
          : @total_price += (order_object.accessory.formatted_cost * order_object.accessory.quantity)
      end
  end

  def new
    @order = Order.new
    @order.billing_address
    @order.user = current_user
    @order_objects = OrderObject.pending(current_user);
    @order.total_price = 0
    @order_objects.find_each do |order_object|
        order_object.suit != nil ? @order.total_price += (order_object.suit.formatted_cost * order_object.suit.quantity)
        : @order.total_price += (order_object.accessory.formatted_cost * order_object.accessory.quantity)
    end
  end

  def create
    @order = Order.new()
    @order.user = current_user
    @order.user.update_attributes!(address_params)

    @order_objects = OrderObject.pending(current_user);
    @order.total_price = 0
    @order_objects.find_each do |order_object|
        order_object.suit != nil ? @order.total_price += (order_object.suit.formatted_cost * order_object.suit.quantity)
        : @order.total_price += (order_object.accessory.formatted_cost * order_object.accessory.quantity)
    end
    if @order.save!
      @order_objects.find_each do |order_object|
        order_object.checked_out!
        order_object.order = @order
        order_object.save
      end
      flash[:success] = "Your Oder was placed successfully!"
      redirect_to orders_path
    else
      flash[:error] = @order.errors.full_messages[0]
      redirect_to checkout_path
    end
  end

  private

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
