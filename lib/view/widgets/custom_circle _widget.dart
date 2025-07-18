import 'package:flutter/material.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';

class CustomCircleWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final IconData icon;
  final String subtitle;

  const CustomCircleWidget(
      {super.key,
      required this.backgroundColor,
      required this.title,
      required this.icon,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 32,
          child: Center(
            child: Icon(
              icon,
              color: ColorsManager.whiteColor,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: ColorsManager.blackColor,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: ColorsManager.blackColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
