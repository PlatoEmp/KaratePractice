Feature: POST API Call

  Background: 
    * url 'https://gorest.co.in'
    * def random_string =
      """
      function(s){
      var text = "";
      var pattern ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789"
      for(var i=0; i<s; i++)
      	text = text + pattern.charAt(Math.floor(Math.random() * pattern.length()));
      	return text;
      }

      """
    * def randomString = random_string(10)
    * def reqpayload =
      """
      {
          "name":"thor1",
          "gender":"female",
          "status":"inactive"
      }

      """
    * reqpayload.email = randomString + "@gmail.com"
    * def newResponse = reqpayload
    * print newResponse

  Scenario: Create user using POST API call
    Given path '/public/v2/users'
    And request reqpayload
    And header Authorization = 'Bearer ' + tokenID
    When method POST
    Then status 201
    And match reqpayload.id == '##notnull'
    And match reqpayload.name == 'thor1'
    And match reqpayload.email == newResponse.email
