@POST
Feature: Testing API POST automation exercise.com

  Scenario: POST All Products List
    Given User POST To All Products List
    Then Status Code Should be 405 This request method is not supported
    And Validate POST To All Products List json schema
#
#  Scenario: POST To Search Product
#    Given POST To Search Product
#    Then Status Code Should be 200 OK
#    And Validate POST To Search Product

  #  Scenario: POST To Search Product without search_product parameter
#    Given POST To Search Product without search_product parameter
#    Then Status Code Should be 400 Bad request
#    And Validate POST To Search Product without search_product parameter json schema

  #  Scenario: POST To Verify Login with valid details
#    Given POST To Verify Login with valid details
#    Then Status Code Should be 200 OK
#    And Validate POST To Verify Login with valid details json schema

#    Scenario: POST To Verify Login without email parameter
#    Given User POST To Verify Login without email parameter
#    Then Status Code Should be 400 Bad request
#    And Validate POST To Verify Login without email parameter json schema

#    Scenario: POST To Verify Login with invalid details
#    Given User POST To Verify Login with invalid details
#    Then Status Code Should be 404 Not Found
#    And Validate POST To Verify Login with invalid details json schema

#    Scenario: POST To Create/Register User Account
#    Given User POST To Create/Register User Account
#    Then Status Code Should be 201 User created!
#    And Validate POST To Create/Register User Account json schema


