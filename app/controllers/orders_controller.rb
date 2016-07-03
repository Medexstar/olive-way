class OrdersController < ApplicationController
    def new
        @order = Order.new
        @order.user_id ||= current_user.id
        @order_objects = OrderObject.pending(current_user);
    end
end
