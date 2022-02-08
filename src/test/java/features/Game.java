package features;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import tennis.TennisGame;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Game {

    TennisGame game;

    @Given("starting tennis game between {string} and {string}")
    public void startingTennisGame(String player1, String player2) {
        game = new TennisGame(player1, player2);
    }

    @Then("the score should be {string}")
    public void scoreShouldBe(String score) {
        assertEquals(game.getScore(), score);
    }

    @When("{string} who is player 1 scores")
    public void player1Scores(String player) {
        if (player.equals(game.getPlayerOneName())) {
            game.playerOneScores();
        } else {
            throw new IllegalArgumentException("Illegal player: " + player);
        }
    }

    @When("{string} who is player 2 scores")
    public void player2Scores(String player) {
        if (player.equals(game.getPlayerTwoName())) {
            game.playerTwoScores();
        } else {
            throw new IllegalArgumentException("Illegal player: " + player);
        }
    }
}
