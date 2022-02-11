Feature: Tennis Game

  Scenario: Starting tennis game definition
    Given a tennis game between "Jean" and "Marc"
    Then the score should be "Love all"

  Scenario: Marc and jean won 1 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 1 ball
    When "Marc" scores
    Then the score should be "Fifteen all"

  Scenario: Marc and jean won 2 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 2 ball
    And "Marc" has scored 1 ball
    When "Marc" scores
    Then the score should be "Thirty all"

  Scenario: Marc and jean won 3 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 3 ball
    And "Marc" has scored 2 ball
    When "Marc" scores
    Then the score should be "Deuce"

  Scenario: Jean win deuce
    Given a tennis game between "Jean" and "Marc"
    And the game is deuce
    When "Jean" scores
    Then the score should be "Advantage Jean"

  Scenario: Marc win deuce
    Given a tennis game between "Jean" and "Marc"
    And the game is deuce
    When "Marc" scores
    Then the score should be "Advantage Marc"

  Scenario: Jean win the first ball
    Given a tennis game between "Jean" and "Marc"
    When "Jean" scores
    Then the score should be "Fifteen,Love"

  Scenario: Jean win the second ball
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 1 ball
    When "Jean" scores
    Then the score should be "Thirty,Love"

  Scenario: Jean win the third ball
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 2 ball
    When "Jean" scores
    Then the score should be "Forty,Love"

  Scenario: Jean win the fourth ball and win the game
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 3 ball
    When "Jean" scores
    Then the score should be "Jean wins"

  Scenario: Marc win the first ball
    Given a tennis game between "Jean" and "Marc"
    When "Marc" scores
    Then the score should be "Love,Fifteen"

  Scenario: Marc win the second ball
    Given a tennis game between "Jean" and "Marc"
    And "Marc" has scored 1 ball
    When "Marc" scores
    Then the score should be "Love,Thirty"

  Scenario: Marc win the third ball
    Given a tennis game between "Jean" and "Marc"
    And "Marc" has scored 2 ball
    When "Marc" scores
    Then the score should be "Love,Forty"

  Scenario: Marc win the fourth ball and win the game
    Given a tennis game between "Jean" and "Marc"
    And "Marc" has scored 3 ball
    When "Marc" scores
    Then the score should be "Marc wins"

  Scenario: Marc won 2 ball and Jean 1 ball
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 1 ball
    And "Marc" has scored 1 ball
    When "Marc" scores
    Then the score should be "Fifteen,Thirty"

  Scenario: Marc won 1 ball and Jean 2 ball
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 1 ball
    And "Marc" has scored 1 ball
    When "Jean" scores
    Then the score should be "Thirty,Fifteen"

  Scenario: Marc won 3 ball and Jean 1 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 1 ball
    And "Marc" has scored 2 ball
    When "Marc" scores
    Then the score should be "Fifteen,Forty"

  Scenario: Marc won 1 ball and Jean 3 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 2 ball
    And "Marc" has scored 1 ball
    When "Jean" scores
    Then the score should be "Forty,Fifteen"

  Scenario: Marc won 2 ball and Jean 3 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 2 ball
    And "Marc" has scored 2 ball
    When "Jean" scores
    Then the score should be "Forty,Thirty"

  Scenario: Marc won 3 ball and Jean 2 balls
    Given a tennis game between "Jean" and "Marc"
    And "Jean" has scored 2 ball
    And "Marc" has scored 2 ball
    When "Marc" scores
    Then the score should be "Thirty,Forty"
