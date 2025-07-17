import 'package:flutter/material.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextManager.appbartitle),
        leading: IconButton(
          icon: const Icon(Icons.perm_device_info),
          onPressed: () {
            AppPreferences.getDarkMode() ? ThemeData.light() : ThemeData.dark();
            isDarkMode = !AppPreferences.getDarkMode();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_2_outlined),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
      ),
    );
  }
}
