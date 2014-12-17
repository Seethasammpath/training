#scenario:1
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
#scenario:2
Given(/^I am on'Order Online'page$/) do
find(".qa-Cl_order").click
sleep 5
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

 #scenario:3

#For selecting store in 3rd position 

#When(/^I select store in '(\d+)' position$/) do |arg1|
 #find(:xpath, "//div[@id='locationsResultsPage']/div[2]/div[2]/div[3]/div[2]/a").click
#end

#By default this will select store in first position 
And(/^I click on FutureCarryoutorder button$/) do
	first('.js-orderCarryoutNow').click
 end

Then(/^i should be on the Entrees page$/) do
	expect(page).to have_css('#entreesPage')
 end

#Scenario:4
When(/^I click on Specialty Pizza$/) do
 find('.navigation-Pizza').click
end

When(/^I click on order link$/) do
first("div[class='button']", :text =>"Order").click
end

When(/^I click on Addtoorder link$/) do
  find(".btn js-isNew").click
end





