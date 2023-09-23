import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
enum AppSharedPreferencesKeys { CID, MID, TOKEN_KEY, PIN, PWD, NAME }

Map<AppSharedPreferencesKeys, String> _keysMap = {
  AppSharedPreferencesKeys.CID: 'cid',
  AppSharedPreferencesKeys.MID: 'mid',
  AppSharedPreferencesKeys.TOKEN_KEY: 'tokenKey',
  AppSharedPreferencesKeys.PIN: 'pin',
  AppSharedPreferencesKeys.PWD: 'pwd',
  AppSharedPreferencesKeys.NAME: 'name',
};

class AppSharedPreferences {
  static AppSharedPreferences? _instance;
  static late SharedPreferences _sharedPreferences;

  AppSharedPreferences._();

  static Future<void> _initService() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<AppSharedPreferences> get instance async {
    await _initService();
    _instance ??= AppSharedPreferences._();
    return _instance!;
  }

  Future<void> setString(
      {required AppSharedPreferencesKeys key, required String value}) async {
    await _sharedPreferences.setString(_keysMap[key]!, value);
  }

  Future<void> setBool(
      {required AppSharedPreferencesKeys key, required bool value}) async {
    await _sharedPreferences.setBool(_keysMap[key]!, value);
  }

  String? getString({required AppSharedPreferencesKeys key}) {
    return _sharedPreferences.getString(_keysMap[key]!);
  }

  bool? getBool({required AppSharedPreferencesKeys key}) {
    return _sharedPreferences.getBool(_keysMap[key]!);
  }

  Future<bool> flushStorage() async {
    return await _sharedPreferences.clear();
  }
}
