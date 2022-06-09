Feature: POST API Call

  Background: 
    * url 'https://gorest.co.in'
    * def reqpayload =
      """
      {
          "name":"thor1",
          "email":"thor1@gmail.com",
          "gender":"female",
          "status":"inactive"
      }

      """
    * print reqpayload

  Scenario: Create user using POST API call
    Given path '/public/v2/users'
    And request reqpayload
    And header Authorization = 'Bearer ' + tokenID
    When method POST
    Then status 201
    #And match reqpayload.id == '(#present)'
    And match reqpayload.name == 'thor1'
    And match reqpayload.email == 'thor1@gmail.com'
