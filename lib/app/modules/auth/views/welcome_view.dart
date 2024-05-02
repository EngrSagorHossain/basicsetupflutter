import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:basice_setup/app/constant/screen_size.dart';
import 'package:basice_setup/app/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../reuseable_widgets/radius_button_solid_color.dart';

class WelcomeView extends GetView {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil.getScreenHeight() * 0.15,
                ),
                Text(
                  'Welcome Again.!',
                  style: kBoldBlackText,
                ),
                const Text(
                  'Enjoy the best experience',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/images/company_logo/sheikhit.png',
              height: ScreenUtil.getScreenHeight() * 0.1,
              width: ScreenUtil.getScreenWidth() * 0.5,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                BorderRadiusButtonSolidColor(
                  height: 80,
                  width: double.infinity,
                  color: kPrimaryColor,
                  text: 'Login Now',
                  textColor: Colors.white,
                ),
                BorderRadiusButtonSolidColor(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  text: 'Register Now',
                  textColor: kPrimaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
