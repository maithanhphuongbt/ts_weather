import 'dart:ui';

class AppLocale {
  static Locale englishLocale = Locale('en');
  static Locale vietnameseLocale = Locale('vi');

  static List<Locale> supportedLocales = [englishLocale, vietnameseLocale];
  static String translationPath = 'assets/translations';
}
