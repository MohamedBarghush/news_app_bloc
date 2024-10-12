import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper 
{
  static SharedPreferences? sharedPreferences;

  static init() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBoolean({required String key, required bool value}) async
  {
    return await sharedPreferences!.setBool(key, value);
  }

  static bool? getBoolean({required String key})
  {
    return sharedPreferences!.getBool(key);
  }

  static Future<bool> putString({required String key, required String value}) async
  {
    return await sharedPreferences!.setString(key, value);
  }

  static String? getString({required String key})
  {
    return sharedPreferences!.getString(key);
  }

  static Future<bool> putInt({required String key, required int value}) async
  {
    return await sharedPreferences!.setInt(key, value);
  }

  static int? getInt({required String key})
  {
    return sharedPreferences!.getInt(key);
  }
}