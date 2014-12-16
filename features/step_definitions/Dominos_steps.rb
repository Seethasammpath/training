#Background step:
When(/^I visit the Dominos home page$/) do
visit("https://order.dominos.com")
end

Given(/^I am on the Dominos home page$/) do
expect(page).to have_selector(:id, 'homePage')
end

When(/^I click on 'Order Online' link$/) do
find(".qa-Cl_order").click
sleep 20
end

Then(/^I should be on'Order Online' page$/) do
expect(page).to have_selector(:id, 'locationsSearchPage')
end

Given(/^I am on'Order Online'page$/) do
find(".qa-Cl_order").click
sleep 20
end

When(/^I fill out Address Information form$/) do
  find(".Carryout").click
 select('House', :from => 'Address Type')
 fill_in('City', :with => 'Herndon')
 select('VA', :from => 'State')
 fill_in('Zip Code', :with => '20171')
end

When(/^I click on Search Location button$/) do
   find(".btn--large").click
end

Then(/^I should be on locationResults page$/) do
     expect(page).to have_css("#locationsResultsPage")
 end

