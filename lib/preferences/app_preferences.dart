import 'package:hive_flutter/adapters.dart';

class AppPreferences {
  static late Box boxofdate;
  static Future<void> initHive() async {
    await Hive.initFlutter();
    boxofdate = await Hive.openBox("data");
  }

  static set DarkMode(bool isDarkMode) {
    boxofdate.put("isDarkMode", isDarkMode);
  }

  static bool get DarkMode => boxofdate.get("isDarkMode", defaultValue: false);
}
