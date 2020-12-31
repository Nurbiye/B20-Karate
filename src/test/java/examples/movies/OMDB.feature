Feature: Searching movie from open movie DB

  Background:
    * url 'http://www.omdbapi.com/'
   #http://www.omdbapi.com/?t=Wonder Woman 1984&apiKey=Yourkey


  Scenario:
    Given param apiKey = '5b5d0fe8'
    And param t = 'Wonder Woman : 1984'
    When method get
    Then  status 200
 # assert 3-5 field bellow here