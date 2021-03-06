#scenario:1
When(/^I visit the Dominos home page$/) do
  visit("https://order.dominos.com")
  #execute_script("window.localStorage.clear()")
end

Given(/^I am on the Dominos home page$/) do
  expect(page).to have_selector(:id, 'homePage')
end

When(/^I click on 'Order Online' link$/) do
  find(".qa-Cl_order").click
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

Then(/^I should be on'Order Online' page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

#scenario:2

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
  find(:xpath,'//div[@data-storeid=\'4317\']//a[@data-type=\'Carryout\']').click
end

Then(/^i should be on the Entrees page$/) do
  expect(page).to have_css('#entreesPage')
end
#Scenario:4
When(/^I click on Specialty Pizza$/) do
  find('.navigation-Pizza').click
end

When(/^I click 'Italian Sausage & Pepper Trio' pizza$/) do
  find(:xpath, '//a[@href=\'#/product/S_PIZPT/builder/\' and @data-clicked-element=\'button\']').click
end


When(/^I click 'Spinach & Feta' Pizza$/) do
  find(:xpath, '//a[@href=\'#/product/S_PIZSE/builder/\' and @data-clicked-element=\'button\']').click
end


When(/^I click on Add to Order link$/) do
  click_button('Add to Order')
end
  
Then(/^I should be on the checkoutpage$/) do
	expect(page).to have_selector(:id, 'orderSummaryInColumn')
	#expect(page).to have_css("#orderCheckoutPage")
end


Then(/^I click on checkout button$/) do
  click_link('Checkout')
end

Then(/^I should be on continuecheckoutpage$/) do
  expect(page).to have_selector(:id, 'myProfileInCheckout')
end

Then(/^I click on continuecheckout button$/) do
  click_link('Continue Checkout')
end

Then(/^I should be on Placeyourorderpage$/) do
  expect(page).to have_selector(:id, 'orderPaymentPage')
end


Then(/^check the price of the 'Italian Sausage & Pepper Trio' pizza$/) do
  expected = find(:xpath, '//table[@data-product-code=\'PASACPT\']//td[@class=\'price\']').native.text
  expect(expected).to eq('$9.99')
end


Then(/^check the quantity of the 'Italian Sausage & Pepper Trio' pizza$/) do
  expected = find(:xpath, '//table[@data-product-code=\'PASACPT\']//option[@selected=\'\']').native.text
  expect(expected).to eq('1')
end

Then(/^check the price of the 'Spinach & Feta' pizza$/) do
  expected = find(:xpath, '//table[@data-product-code=\'PASACSE\']//td[@class=\'price\']').native.text
  expect(expected).to eq('$9.99')
end

Then(/^check the quantity of the 'Spinach & Feta' pizza$/) do
  expected = find(:xpath, '//table[@data-product-code=\'PASACSE\']//option[@selected=\'\']').native.text
  expect(expected).to eq('1')
end
Then(/^check the Order Total$/) do
  expected = find(:xpath, '//td[@class=\'finalizedTotal js-total\']').native.text
  expect(expected).to eq('$21.68')
end
