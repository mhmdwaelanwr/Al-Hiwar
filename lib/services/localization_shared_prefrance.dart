import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LocaleManager {
  static const String _localeKey = 'app_locale';

  /// حفظ اللغة
  static Future<void> saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);
  }

  /// تحميل اللغة
  static Future<Locale> getSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_localeKey);

    if (code != null) {
      return Locale(code);
    }
    // Default: انجليزي
    return const Locale('en');
  }
}
