require 'spec_helper'

describe "orders/index.html.erb" do

  before(:each) do
    assign(:orders, [Order.new(:name => 'Fred'), Order.new(:name => 'Vincent')])
    render
  end

  subject { list }

  it "displays a list" do
    subject.should_not be_nil
  end

  describe "the list" do

    it "displays the 2 items" do
      subject.should have_selector("li", :count => 2)
    end

    it "each items displays the name" do
      subject.should match_selector("li") do |first, second|
        first.should contain('Fred')
        second.should contain('Vincent')
      end
    end

  end

  def list
    component_under_test = nil
    rendered.should match_selector("ul") do |list|
      component_under_test = list
    end
    component_under_test
  end

end