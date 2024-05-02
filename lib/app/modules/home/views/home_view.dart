import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:basice_setup/app/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          leadingIcon: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actionIcon: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          ),
          appBarName: 'Home Page'),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  AppBar buildAppBar({
    required IconButton leadingIcon,
    required IconButton actionIcon,
    required String appBarName,
  }) {
    return AppBar(
      actions: [actionIcon],
      leading: leadingIcon,
      backgroundColor: kPrimaryColor,
      title: Text(
        appBarName,
        style: kNormalWhiteText(fontSize: 20),
      ),
      centerTitle: true,
    );
  }
}
