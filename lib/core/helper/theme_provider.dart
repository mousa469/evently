import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeProvider extends ChangeNotifier {
 bool  isLight = true ;

  void changeTheme (){
 if (isLight) {
      isLight = false;
    } else {
      isLight = true;
    }
    notifyListeners();
  }
}