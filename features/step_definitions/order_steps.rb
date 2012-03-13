
When /^"([^"]*)" orders a t\-shirt to be sent at "([^"]*)"$/ do |name, address|
  visit "/orders/new"
  fill_in 'order[name]', :with => name
  fill_in 'order[address]', :with => address
  click_button 'Send it to me asap'
end

Then /^the order list contains "([^"]*)"$/ do |buyer|
  visit "/orders"
  page.should have_content(buyer)
end

And /^the system knows that "([^"]*)" wants a t\-shirt to be sent at "([^"]*)"$/ do |name, address|
  Order.find_by_name(name).address.should == address
end

Then /^the system has sent a mail containing "([^"]*)" to the following recipients$/ do |body, table|
  table.rows.each { |recipient|
  }
  pending
end
