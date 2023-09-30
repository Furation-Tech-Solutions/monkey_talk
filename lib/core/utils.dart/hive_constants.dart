/// [HiveConstants] contains the constants
/// for hive box(normal along with lazy boxes)
/// Note: Use lowercamel case naming convention for NAMING HIVE BOXES
abstract class HiveConstants {
  /// Lazy Box for User
  static const String userBox = 'user_box';

  /// Key for [userBox] lazy box
  /// for storing uid for skipping login
  static const String userUidKey = 'user_uid_key';

  // /// Key for [userBox] lazy box
  // /// for storing logged in user's permission
  // static const String userPermissionsKey = 'user_permissions_key';

  // /// Lazy Box for theme
  // // static const String themeBox = 'theme_box';
  // /// Key for [userBox] lazy box
  // static const String isThemeDarkKey = 'is_dark';

  // /// Lazy Box for language
  // // static const String localeBox = 'locale_box';
  // /// Key for [userBox] lazy box
  // static const String languageCodeKey = 'language_code';
}
