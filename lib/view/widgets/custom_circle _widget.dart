import 'package:flutter/material.dart';

class CustomCircleWidget extends StatelessWidget {
  const CustomCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20,
      child: Center(
        child: Icon(
          Icons.arrow_forward_ios,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
