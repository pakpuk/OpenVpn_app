import 'package:flutter/material.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';

class localBotttomNavigationBar extends StatelessWidget {
  const localBotttomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
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
}
