import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/shared_preferences_keys.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic getDataFromSP({required SharedPreferencesKeys key}) {
    return sharedPreferences.get(key.name);
  }

  static Future saveDataToSP(
      {required SharedPreferencesKeys key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key.name, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key.name, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key.name, value.toDouble());
    } else if (value is int) {
      return await sharedPreferences.setInt(key.name, value);
    } else {
      return;
    }
  }

  static Future<bool> removeDataFromSP({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  static Future<bool> clearSPData() async {
    return await sharedPreferences.clear();
  }
}
