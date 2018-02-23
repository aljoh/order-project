class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @order = Order.new
  end

  def create
    order = Order.create(order_params)
    if order.persisted?
      flash[:notice] = "Order created"
    else
      flash[:notice] = order.errors.full_messages
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
