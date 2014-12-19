#scenario:1
When(/^I visit the Dominos home page$/) do
visit("https://order.dominos.com")
end
Given(/^I am on the Dominos home page$/) do
expect(page).to have_selector(:id, 'homePage')
end
When(/^I click on 'Order Online' link$/) do
find(".qa-Cl_order").click
sleep 5
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

#By default this will select store in first position
And(/^I click on FutureCarryoutorder button$/) do
	#first(:link, 'Order Carryout').click
	find(:xpath, '/html/body/div[2]/div[1]/div/div/div[1]/div[2]/div[1]/div[2]/a').click

end

Then(/^i should be on the Entrees page$/) do
expect(page).to have_css('#entreesPage')
end
#Scenario:4
When(/^I click on Specialty Pizza$/) do
find('.navigation-Pizza').click
end

When(/^I click on order link$/) do
find(:xpath, '/html/body/div[3]/div[1]/div/div/section[1]/div/div[1]/a').click
end

#When(/^I close the Ad$/) do
#find(:xpath, '/html/body/div[20]/div/a').click
#end

When(/^I click on Add to Order link$/) do
click_button('Add to Order')
end
  
  Then(/^I should be on the checkoutpage$/) do
	#expect(page).to have_title('Entrees | Specialty Pizza - Domino\'s Pizza, Order Pizza Online for Delivery - Dominos.com')
#end


Then(/^I click on checkout button$/) do
find(:xpath, '/html/body/div[1]/div[1]/aside/div[1]/div/div[2]/div[1]/a').click
  #click_button('checkout')
end

Then(/^I should be on continuecheckoutpage$/) do
  #expect(page).to have_css('#myProfileInCheckout')
  expect(page).to have_selector(:id, 'myProfileInCheckout')
end

Then(/^I click on continuecheckout button$/) do
 click_button('continueCheckout')
end

Then(/^I should be on Placeyourorderpage$/) do
expect(page).to have_selector(:id, 'orderPaymentPage')
end


