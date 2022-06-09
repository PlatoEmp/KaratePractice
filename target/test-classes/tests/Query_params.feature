Feature: GET API with query parameters

  Scenario: get all active user
    * def query = {status:'active'}
    Given url baseUrl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: get all user with name Rupinder
    * def query = {name:'Rupinder'}
    Given url baseUrl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: get all active users with rupinder as name
    * def query1 = {status:'active', gender:'male'}
    Given url baseUrl + '/public/v2/users'
    And params query1
    When method GET
    Then status 200
    * print response
    * def jsonObj = response
    * def usercount = jsonObj.length
    * print usercount
    * match usercount == 20
