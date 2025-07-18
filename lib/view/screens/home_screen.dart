import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  localBotttomNavigationBar(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: ColorsManager.maincolor,
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Icon(
              Icons.flag_circle_outlined,
              color: ColorsManager.whiteColor,
              size: 32,
            ),
            const SizedBox(width: 10),
            Text(
              TextManager.locationCountry,
              style: TextStyle(
                color: ColorsManager.whiteColor,
                fontSize: 20,
              ),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: ColorsManager.whiteColor,
              radius: 20,
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: ColorsManager.maincolor,
                ),
              ),
            ),
          ],
        ),
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
