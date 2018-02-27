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

  def edit
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to root_path
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
