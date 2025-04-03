import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static late SharedPreferences _prefs;

  // Keys
  static const _isLoggedInKey = 'isLoggedIn';
  static const _accessTokenKey = 'accessToken';
  static const _refreshTokenKey = 'refreshToken';
  static const _languageKey = 'selectedLanguage';

  // Initialization
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Auth-related methods
  static bool get isLoggedIn => _prefs.getBool(_isLoggedInKey) ?? false;

  static void login(String accessToken, String refreshToken) {
    _prefs.setBool(_isLoggedInKey, true);
    _prefs.setString(_accessTokenKey, accessToken);
    _prefs.setString(_refreshTokenKey, refreshToken);
  }

  static void logout() {
    _prefs.setBool(_isLoggedInKey, false);
    _prefs.remove(_accessTokenKey);
    _prefs.remove(_refreshTokenKey);
  }

  static String? get accessToken => _prefs.getString(_accessTokenKey);
  static String? get refreshToken => _prefs.getString(_refreshTokenKey);

  // Language-related methods
  static String get selectedLanguage {
    return _prefs.getString(_languageKey) ?? 'en';
  }

  static bool get isLanguageSelected => _prefs.containsKey(_languageKey);

  static Future<void> setSelectedLanguage(String languageCode) async {
    await _prefs.setString(_languageKey, languageCode);
    Get.updateLocale(Locale(languageCode));
    Get.forceAppUpdate();
  }
}
