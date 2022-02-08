Feature: Tennis Game
  Scenario: Starting tennis game definition
    Given starting tennis game between "Jean" and "Marc"
    Then the score should be "Love all"

  Scenario: Jean win the first ball
    Given starting tennis game between "Jean" and "Marc"
    When "Jean" who is player 1 scores
    Then the score should be "Fifteen,Love"

#  Scenario: Jean win the second ball
#
#  Scenario: Jean win the third ball
#
#  Scenario: Jean win the fourth ball and win the game
#
#  Scenario: Marc win the second ball
#
#  Scenario: Marc win the third ball
