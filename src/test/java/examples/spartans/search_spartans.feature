Feature: Searching Spartan by name and gender

  Background:
    * url 'http://52.201.187.226:8000/'

  Scenario: User should be able to search
    Given path '/api/spartans/search'
    # this is how we provide a query parameter in karate
    And param nameContains = 'a'
    And param gender = 'Female'
    When method get
    Then status 200
    # verify the gender field returned correctly
    * match each response.content[*].gender == 'Female'
    # to be continue to be fixed
    # * match each (response.content[*].name.contains == 'ZZZzzzzzzzzzz'   -->false positive

