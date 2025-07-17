import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  localBotttomNavigationBar(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color : AppPreferences.DarkMode ? ThemeData.
            ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: localBotttomNavigationBar(context),
      appBar: AppBar(
        title: const Text(TextManager.appbartitle),
        leading: IconButton(
          icon: const Icon(Icons.perm_device_info),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_2_outlined),
            onPressed: () {
              Get.changeThemeMode(
                AppPreferences.DarkMode ? ThemeMode.light : ThemeMode.dark,
              );
              AppPreferences.DarkMode = !AppPreferences.DarkMode;
            },
          ),
        ],
      ),
    );
  }
}
