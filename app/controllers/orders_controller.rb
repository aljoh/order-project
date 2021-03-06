class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @order = Order.new
  end

  def create
    order = Order.create(order_params)
    if order.persisted?
      flash[:notice] = "Order Created"
    else
      flash[:notice] = order.errors.full_messages.join(",")
    end
    redirect_back(fallback_location: root_path)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    if order.update(order_params)
      flash[:notice] = "Order Edited"
      redirect_to root_path
    else
      flash[:notice] = order.errors.full_messages.join(",")
      redirect_back(fallback_location: { action: "edit", id: params[:id] } )
    end
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    flash[:notice] = "Order Deleted"
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
