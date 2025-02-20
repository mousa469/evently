import 'package:evently/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  static late SharedPreferences prefs;
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void setString({required String key, required String value}) {
    prefs.setString(key, value);
  }

  static void storeUserInfo(
      {required String email, required String userID, required String name}) {
    prefs.setString(Constants.userID, userID);
    prefs.setString(Constants.userName, name);
    prefs.setString(Constants.userEmail, email);
  }

  static getString({required String key}) {
    return prefs.getString(key) ?? "Not exist";
  }

  static void setBool({required String key, required bool value}) {
    prefs.setBool(key, value);
  }

  static getBool({required String key}) {
    return prefs.getBool(key);
  }

  static Future<void> clear() async {
    await prefs.clear();
  }
}
