Feature: Spartan App Feature testing

  #this is no auth IP, so we just focus on writing feature file
  Background:
    * url 'http://52.201.187.226:8000/'
    * path '/api'

    Scenario: User should be able to call /api/hello to get greating
      Given path '/hello'
      When method get
      Then status 200
     
      # checking content type header
  Then header Content_Type = 'text/plain;charset=UTF-8'
  #Then match header Content_Type == 'text/plain;charset=UTF-8'

      #checking the payload
  Then assert response == 'Hello from Sparta'



      Scenario: Spartan Crud Operation
       * def payload =
        """
             {
             "name":"Tucky",
             "gender":"Male",
             "phone":1231231234
              }
        """

        Given path '/spartans'
        And header Content-Type = 'application/json'
        And request payload
        When method post
        Then status 201
        Then assert response.success == 'A Spartan is Born!'



     #Keep going from here and test: if you can access the data you just added
   # send another GET request
        * def newID = response.data.id
        Given path '/api/spartans/' , newID
        When method get
        Then status 200
        Then match header Content-Type == 'application/json'

     # Update the data with new body
        * def newPayload =
        """
             {
             "name":"Virginia",
             "gender":"Female",
             "phone":1231231230
              }
        """
        Given path '/api/spartans/' , newID
        And header Content-Type = 'application/json'
        And request newPayload
        When method put
        Then status 204

     # Send a delete request to clean up
        Given path '/api/spartans/' , newID
        When method delete
        Then status 204
