import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LocaleService {
  static const String _localeKey = 'selected_locale';

  /// Save the selected locale
  static Future<void> saveLocale(String localeCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, localeCode);
  }

  /// Get the saved locale, or return null if not set
  static Future<String?> getSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_localeKey);
  }

  /// Get the saved locale as Locale object, or return default
  static Future<Locale> getSavedLocaleAsLocale() async {
    final localeCode = await getSavedLocale();
    if (localeCode != null) {
      return Locale(localeCode);
    }
    return const Locale('en'); // Default to English
  }
}

