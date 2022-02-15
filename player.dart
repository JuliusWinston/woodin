/* This file contains the model/blueprint for a player */
import "dart:math";

class Player {
/* 
  Create properties
  1. name as string
  2. health as int
*/
  late String playerName;
  late int playerHealth;
  late int playerAttack;

  //I want to use a constructor to set the player's name and health when the player is first created so I do not waste more time calling the setters to assign them
  Player(String name, int health) {
    this.playerName = name;
    this.playerHealth = health;
  }

  //Setters and getters for player name and health
  String get player_name {
    return playerName;
  }

  void set player_name(String name) {
    this.playerName = name;
  }

  void set player_health(int health) {
    this.playerHealth = health;
  }

  int get player_health {
    return playerHealth;
  }

// Create a getter function (attack) to return a random integer ranging from 0 to 50
  int get attack {
    var rand = new Random();
    this.playerAttack = rand.nextInt(50);
    return playerAttack;
  }
}
