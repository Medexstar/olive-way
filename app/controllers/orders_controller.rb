class OrdersController < ApplicationController
  def new
    redirect_to account_path if !user_signed_in?
    
    @order = Order.new
    @order_objects = OrderObject.pending(current_user);
    @order.total_price = 0
    @order_objects.find_each do |order_object|
      order_object.suit != nil ? @order.total_price += (order_object.suit.formatted_cost * order_object.suit.quantity)
      : @order.total_price += (order_object.accessory.formatted_cost * order_object.accessory.quantity)
    end
  end
  
  private
  
  def order_params
    params.require(:order).permit(:total_price)
  end
end
