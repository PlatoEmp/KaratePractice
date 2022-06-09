Feature: Passing requests to API calls with headers

  Scenario: Passing Headers -Part 1
    Given header Accept = '*/*'
    And header Connection = 'keep-alive'
    And header Transfer-Encoding = 'chunked'
    
    When url baseUrl + '/public/v2/users'
    When method GET
    Then status 200
    * print response

    
      Scenario: Passing Headers -Part 2
		* def req_headers = {Accept = '*/*', Connection = 'keep-alive', Transfer-Encoding = 'chunked'}
		Given headers req_headers
    When url baseUrl + '/public/v2/users'
    When method GET
    Then status 200
    * print response
    
       Scenario: Passing Headers -Part 3
		* configure req_headers = {Accept = '*/*', Connection = 'keep-alive', Transfer-Encoding = 'chunked'}
    Given url baseUrl + '/public/v2/users'
    When method GET
    Then status 200
    * print response