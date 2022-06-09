Feature: Authorization Token use in API

  Scenario: Use the auth_token for API
    * print myVarName
    * print tokenID
    Given header Authorization = 'Bearer' + tokenID
    Given url baseUrl + '/public/v2/users'
    When method GET
    Then status 200
    * print response
