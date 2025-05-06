import 'package:ecommerceapp/shared_preference/pref_key.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPref {
  //int
  static Future<int> getInt(String key, {int defaultValue = 0}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? defaultValue;
  }

  static setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }

  //bool
  static Future<bool> getBool(String key, {bool defaultValue = false}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? defaultValue;
  }

  static setBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  // double
  static Future<double> getDouble(String key, {double defaultValue = 0.0}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? defaultValue;
  }

  static setDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(key, value);
  }

  // String
  static Future<String> getString(String key, {String defaultValue = ""}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? defaultValue;
  }

  static setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  static setStringList(String key, List<String> value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, value);
  }

  static Future<List<String>> getStringList(String key, {List<String> defaultValue = const []}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? defaultValue;
  }

  static clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  // preference helper methods
  static isLogIn() {
    return getBool(PrefKey.isLogin);
  }

  static resetPreferences() async {
    String deviceID = await SharedPref.getString(PrefKey.deviceId);
    SharedPref.clearAll();
    await SharedPref.setBool(PrefKey.isLogin, false);
    await SharedPref.setString(PrefKey.userId, "0");
    await SharedPref.setString(PrefKey.accessToken, "0");
    await SharedPref.setString(PrefKey.deviceId, deviceID);
  }
}
