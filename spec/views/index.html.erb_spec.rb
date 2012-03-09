require 'spec_helper'

describe "orders/index.html.erb" do

  it "displays all orders" do
    assign(:orders, [Order.new(:name=>'Fred', :address=>'Ici', :color=>'yellow')])
    render
    rendered.should have_selector("td", :count => 3)
    rendered.should match_selector("td") do |name, address, color|
      name.should contain( 'Fred' )
      address.should contain( 'Ici' )
      color.should contain( 'yellow' )
    end
  end


end