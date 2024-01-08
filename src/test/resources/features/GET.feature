@GET
Feature: Testing API GET automationexercise.com

  Scenario: Get All Products List
    Given User Set Paramater API Products List
    Then Status Code Should be 200 OK
    And Validate GET Products List json schema

  Scenario: Get All Brands List
    Given Set Paramater All Brands List
    Then Status Code Should be 200 OK
    And Validate GET All Brands json schema

    Scenario: Get user account detail by email
    Given Set Paramater user account detail by email
    Then Status Code Should be 200 OK
    And Validate GET user account detail by email json schema

