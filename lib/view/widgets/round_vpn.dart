import 'package:flutter/material.dart';
import 'package:vpn_basic_project/theme/colors_manager.dart';

class RoundVpnbutton extends StatelessWidget {
  const RoundVpnbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 50,
        backgroundColor: ColorsManager.redacclowop1,
        child: CircleAvatar(
          radius: 42,
          backgroundColor: ColorsManager.redacclowop2,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: ColorsManager.maincolor,
          ),
        ));
  }
}
