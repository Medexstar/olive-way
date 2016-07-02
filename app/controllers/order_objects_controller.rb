class OrderObjectsController < ApplicationController
  def new
    @order_object = OrderObject.new
    @order_object.measurement ||= Measurement.new
  end

  def create
  end

  def destroy
  end
end
