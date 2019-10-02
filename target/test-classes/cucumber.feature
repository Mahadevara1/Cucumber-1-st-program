#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Title of your feature
  I want to use this template for my feature file

  @tag1
  Scenario: Title of your scenario
    Given user want to launch the broser
    And user want to open the  amazon url
    When user enters mobiles in searchbutton
    And user click search button
    
    Then user able to see reasults 
    
    @tag2
  Scenario: Title of your scenario
    Given user want to launch the broser
    And user want to open the  amazon url
    And user enters mobiles in searchbutton
    And user click search button
    And user selected 1 mobile
    When user added selected mobile to cart
    
    Then user should see the product in cart
    
      @tag3
  Scenario: Title of your scenario
    Given user want to launch the broser
    And user want to open the  amazon url
    And user enters mobiles in searchbutton
    And user click search button
    And user selected 1 mobile
    And user is in payment page of the application
    And user is clicked radio button
    When user clicks place order button 
    
    Then user should be able to comple order
    
         @tag4
  Scenario: Title of your scenario
    Given user want to launch the broser
    And user want to open the  amazon url
    And user has clicked register now link
    And user has fill the text box
   
    When user clicks cancle or reset  button 
    
    Then user should be see deatils in test box has reset 
    
    
    
    

  @tag2
  Scenario Outline: Title of your scenario outline
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
