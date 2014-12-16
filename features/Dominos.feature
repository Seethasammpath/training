Feature: Order Dominos Pizza Online
We want to step through a simple scenario for training

Background:
When I visit the Dominos home page

@orderonlinenav
Scenario: Check the Order Online page
Given I am on the Dominos home page
When I click on 'Order Online' link
Then I should be on 'Order Online' home page

