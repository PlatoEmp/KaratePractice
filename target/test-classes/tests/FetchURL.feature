Feature: Fetch API from URL

  Scenario: Fetch and print the api
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

  Scenario: Print the fetched API
    * def jsonObject =
      """
      {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}

      """
    * print jsonObject
    * print jsonObject.data.email + "" + jsonObject.support.url
    * print 'The email is ' + jsonObject.data.email + ' and I have originated from ' + jsonObject.support.url

  Scenario: negative test case
    Given url 'https://reqres.in/api/users/23'
    When method GET
    Then status 404

  Scenario: negative test case :part 2
    Given url 'https://reqres.in/api/users/23'
    When method GET
    Then status 200

  Scenario: Go into the API details
    * def sec_json =
      """
      {"page":1,"per_page":6,"total":12,"total_pages":2,"data":[{"id":1,"name":"cerulean","year":2000,"color":"#98B2D1","pantone_value":"15-4020"},{"id":2,"name":"fuchsia rose","year":2001,"color":"#C74375","pantone_value":"17-2031"},{"id":3,"name":"true red","year":2002,"color":"#BF1932","pantone_value":"19-1664"},{"id":4,"name":"aqua sky","year":2003,"color":"#7BC4C4","pantone_value":"14-4811"},{"id":5,"name":"tigerlily","year":2004,"color":"#E2583E","pantone_value":"17-1456"},{"id":6,"name":"blue turquoise","year":2005,"color":"#53B0AE","pantone_value":"15-5217"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
      """
    * print sec_json
    * print sec_json.page
    * print sec_json. data[1].color
    * print sec_json.data[2]

  Scenario: GET API- GoRest Feature
    Given url baseUrl + '/public/v2/users'
    And path '2241'
    When method GET
    Then status 200
    * print response
    * def result = response
    * print result
    * def actName = result.gender
    * print actName
    * match actName == 'female'
    * def actID = result.id
    * print actID
    * match actID == 2240

  Scenario: GET API- GoRest Feature Part 2- Negative Test case
    Given url baseUrl + '/public/v2/users'
    And path '21'
    When method GET
    Then status 404
    * print response
