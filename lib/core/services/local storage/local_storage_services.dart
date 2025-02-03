import 'package:evently/core/services/local%20storage/local_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageServices {
  static Future<void> storeUsersInfo({required String name , required String id}) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(LocalStorageKeys.userName, name);
    preferences.setString(LocalStorageKeys.userID, id);
  }
}
