Feature: Order Dominos Pizza Online
We want to step through a simple scenario for training

Background:
When I visit the Dominos home page 

@orderonlinenav
Scenario: Check the Order Online page
Given I am on the Dominos home page
When I click on 'Order Online' link
Then I should be on'Order Online' page

@Fillingaddress
Scenario: Filling out the Address Information
When I click on 'Order Online' link
When I fill out Address Information form
And I click on Search Location button
Then I should be on locationResults page

@Selectdeliverystore 
Scenario:Selecting delivery store
When I click on 'Order Online' link
When I fill out Address Information form
And I click on Search Location button
And I click on FutureCarryoutorder button 
Then i should be on the Entrees page 


@ordermultiplepizzas
Scenario:Ordering multiple pizza
When I click on 'Order Online' link
When I fill out Address Information form
And I click on Search Location button
And I click on FutureCarryoutorder button 
And I click on Specialty Pizza
And I click on order link
And I click on Addtoorder link 
Then i should be on the Entrees page 












