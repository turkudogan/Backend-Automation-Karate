@getScore
Feature: getScore

  Background:
    * def getScoreJson = read('classpath:Common/getScore.json')
    Given url Dev
    And path 'score/Score'
    * configure headers = { Accept: 'application/json', Content-Type: 'application/json'}

  Scenario: Get score
    * def result = call read('../DatabaseConnection/DBName.feature@getScore')
      * print result.executeQuery
    And set getScoreJson.tckn = result.executeQuery[0].TCKN
    Given params getScoreJson
    When method get
    Then status 200
    And match $[0].id == '#notnull'
    And match $[0].msisdnList[0] == result.executeQuery[0].MSISDN
    And match $[0].personalId == result.executeQuery[0].TCKN
    And match $[0].creditProfile[0].tckn == '#notnull' && '#string'
    And match $[0].creditProfile[0].creditScore == '#? _ >= 0 && _<200'