import 'package:flutter/material.dart';
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
            // Handle menu button press
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
