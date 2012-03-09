

Given /^"([^"]*)" wants to order a human symphony t\-shirt$/ do |buyer|
  @name = buyer
end

When /^he orders a white t\-shirt to be send at "([^"]*)"$/ do |address|
  Order.create!(:name=>@name, :address=>address, :color=>"white")
end

Then /^he sees in the waiting list that "([^"]*)" waits for a white t\-shirt to be shipped to "([^"]*)"$/ do |buyer, address|
  visit "/orders"
  page.should have_content(buyer)
  page.should have_content(address)
  page.should have_content("white")
end