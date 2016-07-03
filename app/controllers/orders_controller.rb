class OrdersController < ApplicationController
    def new
        if !user_signed_in?
          redirect_to account_path
        end
        @order = Order.new
        @order.user ||= current_user
        @order_objects = OrderObject.pending(current_user);
    end
end
