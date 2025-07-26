import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpn_basic_project/preferences/app_preferences.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';
import 'package:vpn_basic_project/view/widgets/custom_circle%20_widget.dart';
import 'package:vpn_basic_project/view/widgets/local_bottomNav_bar.dart';
import 'package:vpn_basic_project/view/widgets/round_vpn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: localBotttomNavigationBar(),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleWidget(
                    backgroundColor: ColorsManager.orangeColor,
                    title: TextManager.location,
                    icon: Icons.flag_circle,
                    subtitle: TextManager.free),
                CustomCircleWidget(
                    backgroundColor: ColorsManager.greenColor,
                    title: TextManager.debit,
                    icon: Icons.speed,
                    subtitle: TextManager.pingtext),
              ],
            ),
            RoundVpnbutton(),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleWidget(
                    backgroundColor: ColorsManager.greyColor,
                    title: TextManager.speed,
                    icon: Icons.download,
                    subtitle: TextManager.download),
                CustomCircleWidget(
                    backgroundColor: ColorsManager.bluecolor,
                    title: TextManager.locationCountry,
                    icon: Icons.upload,
                    subtitle: TextManager.upload),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
