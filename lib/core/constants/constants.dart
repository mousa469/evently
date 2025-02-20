import 'package:flutter/material.dart';

abstract class Constants {
  static String birthday = "Birthday";
  static const String workshop = "Work Shop";
  static const String sports = "Sports";
  static const String holiday = "Holiday";
  static const String gaming = "Gaming";
  static const String bookclub = "Book Club";
  static const String eating = "Eating";
  static const String meeting = "Meeting";
  static const String all = "All";
  static const String userName = "userName";
  static const String userID = "userID";
  static const String userEmail = "userEmail";
  static const String isOnBoardingSeenBefore = "isOnBoardingSeenBefore";
  static const String isLoginBefore = "isLoginBefore";
   static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple, // Your primary color
    brightness: Brightness.light,
  );

 static final darkColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple, // Your primary color
    brightness: Brightness.dark,
  );
}
