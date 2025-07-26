import 'package:flutter/material.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';
import 'package:vpn_basic_project/theme/text_manger.dart';

class RoundVpnbutton extends StatelessWidget {
  const RoundVpnbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: CircleAvatar(
          radius: 50,
          backgroundColor: ColorsManager.redacclowop1,
          child: CircleAvatar(
            radius: 42,
            backgroundColor: ColorsManager.redacclowop2,
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 35,
                backgroundColor: ColorsManager.maincolor,
                child: Column(
                  children: [
                    Icon(
                      Icons.power_settings_new,
                      color: ColorsManager.whiteColor,
                      size: 20,
                    ),
                    SizedBox(height: 5),
                    Text(TextManager.connecttxt,
                        style: TextStyle(
                          color: ColorsManager.whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
