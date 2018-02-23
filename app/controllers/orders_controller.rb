class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_back(fallback_location: root_path)
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
