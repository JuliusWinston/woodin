import 'dart:io';
import 'player.dart';
import 'engine.dart';

/* 
In this coding challenge, you going to create a Fighter Game in Dart 
The fight is going to be between two players
*/

//Start coding in the main function

void main() {
  //Initialize the game engine
  var playGame = GameEngine();

  //Initialize your Player models
  var players = [new Player('Winston', 100), new Player('Julius', 100)];

  //Run the function startGame
  playGame.startGame(players);

  //.......................................................
  // var players = [new Player('John', 100), new Player('Peter', 100)];
  // int round = 1;

  // while (players[0].player_health > 0 && players[1].player_health > 0) {
  //   print('Round: ${round}------');
  //   subEngine(players[0], players[1]);
  //   print('');
  //   subEngine(players[1], players[0]);
  //   print('----------------------------');
  //   round++;
  // }

  exit(0);
}

/*
Native Dart coding challenge 
Created by Benjamin Dotse 
*/
subEngine(Player attackingPlayer, Player playerAttacked) {
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
    print(
        '${playerAttacked.player_name} is dead, ${attackingPlayer.player_name} wins the fight');
    gameOver = true;
  } else {
    gameOver = false;
  }
  gameOver = (playerAttacked.player_health <= 0) ? true : false;
  return gameOver;
}
