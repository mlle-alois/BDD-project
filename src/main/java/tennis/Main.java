package tennis;

public class Main {

    public static void main(String[] args) {
        TennisGame tennisGame = new TennisGame("Federer", "Nadal");
        System.out.println("Start Game between " + tennisGame.getPlayerOneName() + " and " + tennisGame.getPlayerTwoName());
        do {
            int playerWhoScores = (int) Math.round(Math.random());
            if (playerWhoScores == 0) {
                tennisGame.playerOneScores();
            } else {
                tennisGame.playerTwoScores();
            }
            System.out.println(tennisGame.getScore());
        } while (!tennisGame.getScore().equals(tennisGame.getPlayerOneName() + " wins") &&
                !tennisGame.getScore().equals(tennisGame.getPlayerTwoName() + " wins"));
    }
}
