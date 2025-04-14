import 'package:shared_preferences/shared_preferences.dart';

enum SharedPreferencesKey {
  isDarkMode('isDarkMode');

  final String value;
  const SharedPreferencesKey(this.value);
}

class SharedPreferencesUtil {
  static final SharedPreferencesUtil _instance = SharedPreferencesUtil._();
  static SharedPreferences? _prefs;

  factory SharedPreferencesUtil() => _instance;

  SharedPreferencesUtil._();

  Future<SharedPreferences> get _instanceAsync async {
	_prefs ??= await SharedPreferences.getInstance();
	return _prefs!;
  }

  // ================ String ================
  Future<String?> getString(SharedPreferencesKey key) async {
	try {
	  final prefs = await _instanceAsync;
	  return prefs.getString(key.value);
	} catch (e) {
	  await _clearOnError();
	  return null;
	}
  }

  Future<bool> setString(SharedPreferencesKey key, String value) async {
	final prefs = await _instanceAsync;
	return prefs.setString(key.value, value);
  }

  // ================ bool ================
  Future<bool?> getBool(SharedPreferencesKey key) async {
	try {
	  final prefs = await _instanceAsync;
	  return prefs.getBool(key.value);
	} catch (e) {
	  await _clearOnError();
	  return null;
	}
  }

  Future<bool> setBool(SharedPreferencesKey key, bool value) async {
	final prefs = await _instanceAsync;
	return prefs.setBool(key.value, value);
  }

  // ================ int ================
  Future<int?> getInt(SharedPreferencesKey key) async {
	try {
	  final prefs = await _instanceAsync;
	  return prefs.getInt(key.value);
	} catch (e) {
	  await _clearOnError();
	  return null;
	}
  }

  Future<bool> setInt(SharedPreferencesKey key, int value) async {
	final prefs = await _instanceAsync;
	return prefs.setInt(key.value, value);
  }

  // ================ double ================
  Future<double?> getDouble(SharedPreferencesKey key) async {
	try {
	  final prefs = await _instanceAsync;
	  return prefs.getDouble(key.value);
	} catch (e) {
	  await _clearOnError();
	  return null;
	}
  }

  Future<bool> setDouble(SharedPreferencesKey key, double value) async {
	final prefs = await _instanceAsync;
	return prefs.setDouble(key.value, value);
  }

  // ================ List<String> ================
  Future<List<String>?> getStringList(SharedPreferencesKey key) async {
	try {
	  final prefs = await _instanceAsync;
	  return prefs.getStringList(key.value);
	} catch (e) {
	  await _clearOnError();
	  return null;
	}
  }

  Future<bool> setStringList(SharedPreferencesKey key, List<String> value) async {
	final prefs = await _instanceAsync;
	return prefs.setStringList(key.value, value);
  }

  // ================ Common Methods ================
  Future<bool> containsKey(SharedPreferencesKey key) async {
	final prefs = await _instanceAsync;
	return prefs.containsKey(key.value);
  }

  Future<bool> remove(SharedPreferencesKey key) async {
	final prefs = await _instanceAsync;
	return prefs.remove(key.value);
  }

  Future<bool> clear() async {
	final prefs = await _instanceAsync;
	return prefs.clear();
  }

  Future<void> _clearOnError() async {
	try {
	  await clear();
	} catch (e) {
	  // Log error if needed
	}
  }
}