class PagesController < ApplicationController
  def beta
  end

  def landing
  end

  def mens
    @mens = Suit.male
  end

  def womens
    @womens = Suit.female
  end

  def accessories
    @accessories = Accessory.all
  end

  def collections
  end
  
  def collection
    @collection = Suit.collection
  end

  def foundation
  end

  def story
  end

  def account
    redirect_to landing_path if user_signed_in?
  end
  
  def account_hub
  end
  
  def orders
    @orders = Order.checked_out(current_user);
  end
  
  def order
    @order = Order.new
    @order.user = current_user
    @order_objects = OrderObject.checked_out(current_user, params[:order_id]);
    @order.total_price = 0
    @order_objects.find_each do |order_object|
      order_object.suit != nil ? @order.total_price += (order_object.suit.formatted_cost * order_object.suit.quantity)
      : @order.total_price += (order_object.accessory.formatted_cost * order_object.accessory.quantity)
    end
  end
  
  def measurements
    @user = current_user
    @measurement = @user.measurement
  end
  
  def measurements_update
    measurements = current_user.measurement
    measurements.shoulder = params[:shoulder] || ""
    measurements.half_chest = params[:half_chest] || ""
    measurements.half_jacket_waist = params[:half_jacket_waist] || ""
    measurements.half_hem = params[:half_hem] || ""
    measurements.back_length = params[:back_length] || ""
    measurements.sleeve_outstem = params[:sleeve_outstem] || ""
    measurements.bicep = params[:bicep] || ""
    measurements.pant_outseam = params[:pant_outseam] || ""
    measurements.half_pant_waist = params[:half_pant_waist] || ""
    measurements.half_bottom = params[:half_bottom] || ""
    measurements.crotch = params[:crotch] || ""
    measurements.thigh = params[:thigh] || ""
    measurements.hip = params[:hip] || ""

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

  def faq
  end

  def guarantee
  end

  def how
  end

  def privacy
  end

  def ship_return
  end
end
