import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  localBotttomNavigationBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          Icon(
            Icons.flag_circle_outlined,
            color: ColorsManager.whiteColor,
          ),
          const SizedBox(width: 10),
          Text(
            TextManager.locationCountry,
            style: TextStyle(
              color: ColorsManager.whiteColor,
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.arrow_forward_ios,
            color: ColorsManager.whiteColor,
          ),
        ],
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
