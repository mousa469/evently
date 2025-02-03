import 'package:flutter/material.dart';

extension Navigation on BuildContext {
   void pushReplacement(String routeName) {
    Navigator.pushReplacementNamed(this, routeName);
  }
   void pushNamed(String routeName) {
    Navigator.pushNamed(this, routeName);
  }
   void pushNamedAndRemoveUntil(String routeName) {
    Navigator.pushNamedAndRemoveUntil(this, routeName , (route) => false,);
  }
   void popUp() {
    Navigator.pop(this);
  }
}
