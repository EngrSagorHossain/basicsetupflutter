import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:basice_setup/app/modules/auth/controllers/auth_controller.dart';
import 'package:basice_setup/app/modules/home/views/home_view.dart';
import 'package:basice_setup/app/reuseable_widgets/radius_button_solid_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../reuseable_widgets/custom_textfield_with_icon.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Enter your credential to login"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextFieldWithIcon(
          hintText: 'Phone Number',
          fillColor: kPrimaryColor.withOpacity(0.1),
          prefixIcon: const Icon(
            Icons.phone_android,
          ),
          textEditingController: controller.phoneController,
        ),
        const SizedBox(height: 10),
        CustomTextFieldWithIcon(
          hintText: 'Password',
          fillColor: kPrimaryColor.withOpacity(0.1),
          prefixIcon: const Icon(
            Icons.password,
          ),
          textEditingController: controller.passwordController,
          obscureText: true,
        ),
        const SizedBox(height: 10),
        BorderRadiusButtonSolidColor(
            height: 80,
            width: double.maxFinite,
            color: kPrimaryColor,
            text: 'Login',
            textColor: Colors.white,
            onPressed: () => Get.to(const HomeView()))
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Forgot password?",
        style: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
