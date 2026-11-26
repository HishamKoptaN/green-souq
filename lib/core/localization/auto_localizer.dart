import 'package:shared_preferences/shared_preferences.dart';
import 'package:translator/translator.dart';

abstract class AutoLocalizer {
  static const String _storagePrefix = 'translations_cache:';
  static final Map<String, String> _memoryCache = {};
  static final _translator = GoogleTranslator();

  static Future<SharedPreferences> get _storage =>
      SharedPreferences.getInstance();

  static Future<String> translate(String text, String langCode) async {
    if (langCode == 'ar' || text.isEmpty) return text;
    final String storageKey = '$langCode:$text';
    final String prefsKey = '$_storagePrefix$storageKey';
    if (_memoryCache.containsKey(storageKey)) {
      return _memoryCache[storageKey]!;
    }
    final prefs = await _storage;
    final String? cachedText = prefs.getString(prefsKey);
    if (cachedText != null) {
      _memoryCache[storageKey] = cachedText;
      return cachedText;
    }
    try {
      final translation = await _translator.translate(
        text,
        from: 'ar',
        to: langCode,
      );
      final String translatedText = translation.text;
      await prefs.setString(prefsKey, translatedText);
      _memoryCache[storageKey] = translatedText;
      return translatedText;
    } catch (e) {
      return text;
    }
  }

  static Future<void> clearCache() async {
    final prefs = await _storage;
    final keysToRemove = prefs
        .getKeys()
        .where((key) => key.startsWith(_storagePrefix))
        .toList();
    for (final key in keysToRemove) {
      await prefs.remove(key);
    }
    _memoryCache.clear();
  }
}
