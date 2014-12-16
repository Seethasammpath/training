#Background step:
When(/^I visit the Dominos home page$/) do
visit("https://order.dominos.com")
end
#test1_OrderOnlineAddress
Given(/^I am on the Dominos home page$/) do
#expect(page).to have_text("MENU")
#expect(page).to have_css("#pageContent")
expect(page).to have_selector(:id, 'homePage')
end
When(/^I click on 'Order Online' link$/) do
find(".qa-Cl_order").click
sleep 20
end
Then(/^I should be on 'Order Online' home page$/) do
#expect(page).to have_text "ADDRESS INFORMATION"
#expect(page).to have_css("#pageContent")
expect(page).to have_selector(:id, 'locationsSearchPage')
end
