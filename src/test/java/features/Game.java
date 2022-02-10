package features;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import tennis.TennisGame;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Game {

    TennisGame game;

    @Given("a tennis game between {string} and {string}")
    public void startingTennisGame(String player1, String player2) {
        game = new TennisGame(player1, player2);
    }

    @Then("the score should be {string}")
    public void scoreShouldBe(String score) {
        assertEquals(game.getScore(), score);
    }

    @When("{string} scores")
    public void playerScores(String player) {
        if (player.equals(game.getPlayerOneName())) {
            game.playerOneScores();
        } else if (player.equals(game.getPlayerTwoName())) {
            game.playerTwoScores();
        } else {
            throw new IllegalArgumentException("Illegal player: " + player);
        }
    }

    @And("{string} has scored {int} ball")
    public void playerHasScoredBall(String player, int numberOfBall) {
        for(int i = 0 ; i < numberOfBall ; i += 1) {
            if (player.equals(game.getPlayerOneName())) {
                game.playerOneScores();
            } else if (player.equals(game.getPlayerTwoName())) {
                game.playerTwoScores();
            } else {
                throw new IllegalArgumentException("Illegal player: " + player);
            }
        }
    }

    @And("the game is deuce")
    public void gameIsDeuce() {
        for(int i = 0 ; i < 3 ; i += 1) {
            game.playerOneScores();
            game.playerTwoScores();
        }
    }


}
