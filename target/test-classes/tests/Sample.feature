Feature: API Test Sample

  Scenario: Test a sample get API
    * print 'hello world'
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

    Scenario: declare and print variable
    
    * def balance = 200
    * def tax = 20
    * print balance + tax