require 'spec_helper'

describe OrdersController do

  describe "GET index" do

    it "retrieves all the orders" do
      @orders = [Order.new, Order.new]
      Order.should_receive(:all).and_return(@orders)
      get :index
      assigns(:orders).should == @orders
    end

  end

  describe "Get new" do

    it "assigns a new order" do
      get :new
      assigns(:order).should be_a_new(Order)
    end

  end

  describe "POST create" do

    it "redirects to the list" do
      post :create
      response.should redirect_to(orders_path)
    end

    it "creates a new order and redirect to the list" do
      @order_params_dummy = { }

      @order = mock_model(Order).as_null_object
      Order.should_receive(:new).with(@order_params_dummy).and_return(@order)
      @order.should_receive(:save!)

      post :create, :order => @order_params_dummy
    end

  end

end

