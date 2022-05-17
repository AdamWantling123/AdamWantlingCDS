@BDDSTORY-C7P-1308
Feature: Create BDD Tests for CODAS 7 (Logging in with CODAS Log in)


  Background:
     
     

  @BDDTEST-C7P-1312
  @validDetails
  Scenario: Logging with CODAS Log in - Valid details
    Given I am at the login page
    When I enter valid login details
    And I click on the login button
    Then I should be at the home page
    

  @BDDTEST-C7P-1320
  @invalidDetails
  Scenario Outline: Login to CODAS 7 

        Given I am at the login page
        When User enters username as '<username>' and password as '<password>'
        Then I should not be logged in
        And I click on the login button
        And An error message will be shown
        Examples:
            | username | password |
            | SLC    | password99 |
            | slc    | Password99 |
            | SLCC   | Password99 |
            | SLC    | IncorrectPassword99 |
