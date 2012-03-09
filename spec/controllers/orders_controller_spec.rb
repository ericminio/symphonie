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

end
