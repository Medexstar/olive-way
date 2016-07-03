class OrdersController < ApplicationController
    def new
        if !user_signed_in?
          redirect_to account_path
        end
        @order = Order.new
        @order.user ||= current_user
        @order_objects = OrderObject.pending(current_user);
        @order.total_price = 0
        @order_objects.find_each do |order_object|
            order_object.suit != nil ? @order.total_price += (order_object.suit.formatted_cost * order_object.suit.quantity)
            : @order.total_price += (order_object.accessory.formatted_cost * order_object.accessory.quantity)
        end
    end
end
