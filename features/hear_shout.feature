Feature: Hear Shout

  Shouts have a range up to 1000m today

  Scenario: In range shout is heard
    Given Lucy is at 0, 0 today
    And Sean is at 0, 900
    When Sean shouts
    Then Lucy should hear Sean

  Scenario: Out of range shout is not heard
    Given Lucy is at 0, 0
    And Sean is at 800, 800
    When Sean shouts
    Then Lucy should hear nothing
