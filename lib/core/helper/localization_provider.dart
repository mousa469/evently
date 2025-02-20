import 'package:flutter/material.dart';

class LocalizationProvider extends ChangeNotifier {
  bool isEnglish = true;

void   changeLanguage() {
    if (isEnglish) {
      isEnglish = false;
    } else {
      isEnglish = true;
    }
    notifyListeners();
  }
}
