import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:basice_setup/app/modules/profile/views/profile_view.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () => Get.to(const ProfileView()),
                child: const Text('Profile Page'))
          ],
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
