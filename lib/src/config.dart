import 'package:flutter/material.dart';                         // Add this import

var brickColors = [                                           // Add this const
  Colors.red,
  Colors.purple,
  Colors.green,
  Colors.yellowAccent,
  Colors.pinkAccent,
  Colors.blue,
  Colors.white,
  Colors.brown,
  Colors.cyan,
  Colors.lightGreenAccent,
];

const gameWidth = 820.0;
const gameHeight = 1600.0;
const ballRadius = gameWidth * 0.02;
const batWidth = gameWidth * 0.2;
const batHeight = ballRadius * 2;
const batStep = gameWidth * 0.05;
const brickGutter = gameWidth * 0.015;
var brickWidth =
    (gameWidth - (brickGutter * (brickColors.length + 1)))
    / brickColors.length;
const brickHeight = gameHeight * 0.03;
const difficultyModifier = 1.03;