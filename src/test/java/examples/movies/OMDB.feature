Feature: Searching movie from open movie DB

  Background:
    * url 'http://www.omdbapi.com/'
    * param apiKey = '5b5d0fe8'
   #http://www.omdbapi.com/?t=Wonder Woman 1984&apiKey=Yourkey


  Scenario:
    # Given param apiKey = '5b5d0fe8'
    Given param t = 'Wonder Woman : 1984'
    When method get
    Then  status 200
 # assert 3-5 field bellow here
    * match response.Title == 'Wonder Woman 1984'
    * match response.Year == '2020'
    * match response.Runtime == '151 min'
    * match response.Rated == 'PG-13'
    * match response.Director == 'Patty Jenkins'



  Scenario Outline: search for movie with name <movie_name>
    Given param t = '<movie_name>'
    When method get
    Then status 200
    And match response.Year == '<year>'

    Examples:
      | movie_name                     | year |
      | Wonder Woman 1984              | 2020 |
      | Life is beautiful              | 1997 |
      | Bad Boys for Life              | 2020 |
      | Contact                        | 1997 |
      | The Godfather                  | 1972 |
      | The Good, the Bad and the Ugly | 1966 |