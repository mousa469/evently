import 'package:flutter/material.dart';

class LocalizationProvider extends ChangeNotifier {
  bool isEnglish = false;

void   changeLanguage() {
    if (isEnglish) {
      isEnglish = false;
    } else {
      isEnglish = true;
    }
    notifyListeners();
  }
}
