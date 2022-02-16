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

  exit(0);
}

/*
Native Dart coding challenge 
Created by Benjamin Dotse 
*/