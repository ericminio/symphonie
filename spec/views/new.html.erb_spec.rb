require 'spec_helper'

describe "orders/new.html.erb" do

  before(:each) do
    render
  end

  it "displays an invitation title" do
    rendered.should have_selector("h1")
    rendered.should match_selector("h1") do |title|
      title.should have_content("Order your symphonic t-shirt")
    end
  end

  it "POSTs to create a new order" do
    rendered.should have_selector("form", :id => "new_order", :action => orders_path(), :method => 'post')
  end

  describe "form" do

    before(:each) do
      rendered.should match_selector("form", :id => "new_order", :action => orders_path(), :method => 'post') do |form|
        @form = form
      end
    end

    it "displays an input text field to invite the user to fill in his name" do
      @form.should have_selector("input", :type => "text", :name => "order[name]")

      @form.should have_selector("span", :id => "nameLabel")
      @form.should match_selector("span", :id => "nameLabel") do |label|
        label.should have_content("Your name")
      end
    end

    it "displays an textarea field to invite the user to fill in his address" do
      @form.should have_selector("textarea", :name => "order[address]")

      @form.should have_selector("span", :id => "addressLabel")
      @form.should match_selector("span", :id => "addressLabel") do |label|
        label.should have_content("Your address")
      end
    end

    it "displays a button to place the order" do
      @form.should have_selector("input", :type => "submit", :value => "Send it to me asap")
    end

  end


end