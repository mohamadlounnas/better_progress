import 'package:shared_preferences/shared_preferences.dart';

/// Interface for local storage operations
abstract class StorageService {
  /// Initialize the service
  Future<void> init();
  
  /// Save a string value
  Future<void> setString(String key, String value);
  
  /// Get a string value
  String? getString(String key);
  
  /// Save a boolean value
  Future<void> setBool(String key, bool value);
  
  /// Get a boolean value
  bool? getBool(String key);
  
  /// Remove a value
  Future<void> remove(String key);
  
  /// Clear all stored values
  Future<void> clear();
}

/// Implementation of [StorageService] using SharedPreferences
class StorageServiceImpl implements StorageService {
  late SharedPreferences _prefs;
  
  @override
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  
  @override
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }
  
  @override
  String? getString(String key) {
    return _prefs.getString(key);
  }
  
  @override
  Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }
  
  @override
  bool? getBool(String key) {
    return _prefs.getBool(key);
  }
  
  @override
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }
  
  @override
  Future<void> clear() async {
    await _prefs.clear();
  }
} 