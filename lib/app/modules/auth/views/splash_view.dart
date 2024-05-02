import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashView'),
        centerTitle: true,
      ),
      body: Center(
        child: GetBuilder<SplashController>(
          init: SplashController(), // Initialize SplashController
          builder: (_) {
            return _.animation.value == 1
                ? _buildContent()
                : _buildLogoAnimation(_.animation);
          },
        ),
      ),
    );
  }

  Widget _buildContent() {
    return const Center(
      child: Text(
        'SplashView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _buildLogoAnimation(Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Your animated logo widget goes here
          // For example:
          FlutterLogo(size: 100),
          SizedBox(height: 20),
          Text(
            'Sheikh IT',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
