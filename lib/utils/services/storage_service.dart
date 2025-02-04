// lib/utils/services/storage_service.dart
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  /// Saves a string value in local storage.
  static Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  /// Retrieves a string value from local storage.
  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  /// Clears a value from local storage.
  static Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
