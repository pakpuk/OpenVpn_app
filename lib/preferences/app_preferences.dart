import 'dart:convert';

import 'package:hive_flutter/adapters.dart';
import 'package:vpn_basic_project/models/vpn_info.dart';

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

//for saving  single selected vpn details
  static VpnInfo get VpnInfoObject =>
      VpnInfo.fromJson(boxofdate.get("vpn" ?? "{}"));

  static set VpnInfoObject(VpnInfo value) =>
      boxofdate.put("vpn", jsonEncode(value));
}
