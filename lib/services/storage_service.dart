import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const _languageKey = 'selectedLanguage';
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get selectedLanguage {
    return _prefs.getString(_languageKey) ?? 'en';
  }

  static Future<void> setSelectedLanguage(String languageCode) async {
    await _prefs.setString(_languageKey, languageCode);
    Get.updateLocale(Locale(languageCode)); 
    Get.forceAppUpdate(); 
  }
}
