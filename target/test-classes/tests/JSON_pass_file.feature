Feature: Passing JSON File as Input to code

  Background: 
    * url 'https://gorest.co.in'
    * def reqpayload = read('example.json')
    * print reqpayload

  Scenario: Input JSON file for API Request
    Given path '/public/v2/users'
    And request reqpayload
    And header Authorization = 'Bearer ' + tokenID
    When method POST
    Then status 201
    * print response

   Scenario: GET and print the Info posted 
   Given path '/public/v2/users/14504'
   When method GET
   Then status 200
   * print response
   
   
   #------------YOU CAN ADD THE RANDOM STRING GENERATOR SNIPPET IN THIS FEATURE FILE------------------------