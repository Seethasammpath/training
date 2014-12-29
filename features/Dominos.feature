Feature: Order Dominos Pizza Online
We want to step through a simple scenario for training

Background:
When I visit the Dominos home page

@ordermultiplepizzas

Scenario:Ordering multiple pizza
When I click on 'Order Online' link
When I fill out Address Information form
And I click on Search Location button
And I click on FutureCarryoutorder button
And I click on Specialty Pizza
And I click on order link
And I click on Add to Order link
Then I should be on the checkoutpage
And I click on checkout button
Then I should be on continuecheckoutpage
And I click on continuecheckout button 
Then I should be on the DonationsPage
And I click close
Then I should be on Placeyourorderpage
