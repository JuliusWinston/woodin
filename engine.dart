import 'player.dart';
/* 
  This file contains the code for the GameEngine
*/

class GameEngine {
/* 
  Create a property round as int
  In the constructor assign the round property to 1
*/
  late int round;

  GameEngine() {
    this.round = 1;
  }

/* 
  Below create a loop in the function to run till the 
  _subEngine returns true
  The function should have two Player model as parameters 
*/
  void startGame(players) {
    bool player1Died = false;
    bool player2Died = false;

    while (!player1Died && !player2Died) {
      //Display Fight information details as seen in the screenshot
      print(
          '-----------------------------------------------------------------');
      print('Round ${this.round}: ${players[0]} attacks ${players[1]}');
      print(
          '-----------------------------------------------------------------');

      //Assign _subEngine here
      //Verify match results from _subEngine
      player2Died = _subEngine(players[0], players[1]);
      print('');

      //Display Fight information details as seen in the screenshot
      print(
          '-----------------------------------------------------------------');
      print('Round ${this.round}: ${players[1]} attacks ${players[0]}');
      print(
          '-----------------------------------------------------------------');

      //Assign _subEngine here
      //Verify match results from _subEngine
      player1Died = _subEngine(players[0], players[1]);
      print('');

      this.round++;
    }
  }

/* 
  Below, return a bool from the function 
  checking the health of a player if it's less or equal to 0
  The function should have two Player model as parameters
*/
  _subEngine(Player attackingPlayer, Player playerAttacked) {
    //Assign the player's attack
    var attack = attackingPlayer.attack;

    bool? gameOver; //To check for game over

    //Display the health status of the players as seen in the screenshot
    print(
        "${attackingPlayer.player_name}'s health: ${attackingPlayer.player_health}");
    print(
        "${playerAttacked.player_name}'s health: ${playerAttacked.player_health}");
    print('');

    //Display name and attack of the attacking player as seen in the screenshot
    print('${attackingPlayer.player_name} attacks with ${attack}');

    //Calculate and update the new health of the player who was attacked
    playerAttacked.player_health = playerAttacked.player_health - attack;
    print(
        "${playerAttacked.player_name}'s health: ${playerAttacked.player_health}");

    /*
      Verify the fight round 
      if Game Over: Display player health and a win message with player name
      else: Display player health and continue   
    */

    if (playerAttacked.player_health <= 0) {
      print('');
      print(
          '${playerAttacked.player_name} is dead, ${attackingPlayer.player_name} wins the fight');
      gameOver = true;
    } else {
      gameOver = false;
    }

    return gameOver;
  }
}
