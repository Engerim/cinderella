@security
Feature: login a user to get a jwt token

  Scenario: login in a user
    Given I add "CONTENT_TYPE" client header equal to "application/json"
    And I add "HTTP_ACCEPT" client header equal to "application/json"
    And I add "HTTP_AUTHORIZATION" client header equal to " "
    And I add "SCRIPT_FILENAME" client header equal to " "
    When I send a POST request to "/login" with body:
    """
    {
        "email": "thetest@beamscore.com",
        "password": "test"
    }
    """
    Then the response status code should be 200
    And the JSON node "data.apiKey" should contain "key"
    And the jwt should have a "username" field with "thetest@beamscore.com"