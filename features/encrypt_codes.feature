Feature: Encrypt Code

  @javascript
  Scenario: should encrypt code successfully
    When I fill form with "lets meet at five" and "3"
    Then I should see "lmavesettietef"

  @javascript
  Scenario: should encrypt code successfully
    When I fill form with "lets meet at five" and "4"
    Then I should see "leveetietmafst"

  @javascript
  Scenario: should encrypt code successfully
    When I fill form with "lets meet at five" and "0"
    Then I should see "letsmeetatfive"

  @javascript
  Scenario: should encrypt code successfully
    When I fill form with "lets meet at five" and "-1"
    Then I should see "keys should be between 0 to 10"
