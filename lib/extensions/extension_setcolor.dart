import 'package:flutter/material.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';

extension AppTheme on ThemeData {
  Color get lighttextColor =>
      AppPreferences.DarkMode ? ColorsManager.white70 : Colors.black87;
  Color get bottomNavigationColor =>
      AppPreferences.DarkMode ? ColorsManager.white12 : ColorsManager.maincolor;
}
