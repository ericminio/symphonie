class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    order = Order.new(params[:order])
    order.save!
    redirect_to(orders_path)
  end

end
