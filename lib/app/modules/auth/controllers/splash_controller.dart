import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/welcome_view.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void onInit() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to the next screen after animation completes
        Get.off(const WelcomeView());
      }
    });

    super.onInit();
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }
}
