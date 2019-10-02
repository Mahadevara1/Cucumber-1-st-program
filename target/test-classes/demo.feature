@tag
Feature: Title of your feature
  I want to use this template for my feature file

  @tag2
  Scenario Outline: Title of your scenario outline
    Given The user is in demo.guru url page and clicked add customer
    When The user enter the firstname,lastname,email,address and  mobile no "<firstname>","<lastname>","<email>","<address>","<mobileno>"
    And The user clicks login button
    Then The user navigate to nextpage

    Examples: 
      | firstname | lastname | email                          | address                | mobileno    |            
      | maha      |      m    |   maha.devara1@gmail.com  |   toraipakkam              | 8919221067 |
