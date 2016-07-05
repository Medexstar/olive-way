class ChargesController < ApplicationController    
    def create
        @order = Order.new(order_params)
        @order.user = current_user
        if @order.save
          flash[:notice] = 'Success! Order finalised!'
          @order_objects = OrderObject.pending(current_user);
          @order_objects.update_all(order_id: @order.id, status: 1)
        else
          flash[:alert] = "Oops! Something happened. #{@offer.errors.full_messages.join('. ')}"
        end

        customer = Stripe::Customer.create(
        :email => stripe_params["stripeEmail"],
        :source  => stripe_params["stripeToken"],
        )

        charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @order.total_price*100,
        :description => 'Rails Stripe customer',
        :currency    => 'aud'
        )
        redirect_to landing_path
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_path
    end
    
    private

    def order_params
        params.require(:order).permit(:total_price)
    end
    
    def stripe_params
        params.permit :stripeEmail, :stripeToken
    end
end
