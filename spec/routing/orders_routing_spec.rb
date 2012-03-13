require 'spec_helper'

describe 'Orders route' do

  it "/orders to OrdersController#index" do
    {:get => "/orders"}.should route_to(:controller => "orders", :action => "index")
  end

  it "/orders/new to OrdersController#new" do
    {:get => "/orders/new"}.should route_to(:controller => "orders", :action => "new")
  end

end