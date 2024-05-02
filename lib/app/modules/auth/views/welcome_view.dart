import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:basice_setup/app/constant/screen_size.dart';
import 'package:basice_setup/app/modules/auth/views/login_view.dart';
import 'package:basice_setup/app/modules/auth/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          fontSize: 33,),),
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
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                  child: ElevatedButton(
                    onPressed: () => Get.to(const LoginView()),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                  child: ElevatedButton(
                    onPressed: () => Get.to(const RegisterView()),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
