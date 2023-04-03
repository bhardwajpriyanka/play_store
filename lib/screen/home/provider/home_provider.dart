import 'package:flutter/material.dart';

class homeprovider extends ChangeNotifier
{
  int i=0;
  bool click = false;

  List images = [
    "assets/images/gameimage1.jpg",
    "assets/images/gameimage2.jpg",
    "assets/images/gameimage3.jpg",
    "assets/images/gmaeimage4.jpg",
    "assets/images/gameimage5.jpg",
    "assets/images/gameimage6.jpg",
    "assets/images/gameimage7.jpg",
    "assets/images/gameimage8.jpg",
    "assets/images/gameimage9.jpg",
    "assets/images/gameimage10.jpg",
  ];

  List name = [
    "Subway Surfers",
    "Ludo king",
    "Carom Pool:Disc Game",
    "Candy crush",
    "Going balls",
    "Temple run",
    "Hill climb racing",
    "Subway princess ",
    "Free fire",
    "Hunter assassin"
  ];

  List images2 = [
    "assets/images/image11.jpg",
    "assets/images/gameimage11.jpg",
    "assets/images/gameimage13.jpg",
    "assets/images/gameimage14.jpg",
    "assets/images/gameimage15.jpg",
    "assets/images/gameimage16.jpg",
    "assets/images/gameimage17.jpg",
    "assets/images/gameimage18.jpg",
    "assets/images/gameimage19.jpg",


  ];

  void onclick()
  {
    click = !click;
    notifyListeners();
  }

  void position(int value)
  {
    i = value;
    notifyListeners();
  }
}