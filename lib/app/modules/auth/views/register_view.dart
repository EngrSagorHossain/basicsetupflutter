import 'package:basice_setup/app/modules/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../colors/app_colors.dart';
import '../../../reuseable_widgets/custom_textfield_with_icon.dart';
import '../../../reuseable_widgets/radius_button_solid_color.dart';
import '../../home/views/home_view.dart';

class RegisterView extends GetView<AuthController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 60.0),
                    const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create your account",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    CustomTextFieldWithIcon(
                      hintText: 'Phone Number',
                      fillColor: kPrimaryColor.withOpacity(0.1),
                      prefixIcon: const Icon(
                        Icons.phone_android,
                      ),
                      textEditingController: controller.phoneController,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFieldWithIcon(
                      hintText: 'Email',
                      fillColor: kPrimaryColor.withOpacity(0.1),
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      textEditingController: controller.emailController,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFieldWithIcon(
                      hintText: 'Password',
                      fillColor: kPrimaryColor.withOpacity(0.1),
                      prefixIcon: const Icon(
                        Icons.password,
                      ),
                      textEditingController: controller.passwordController,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFieldWithIcon(
                      hintText: 'Confirm Password',
                      fillColor: kPrimaryColor.withOpacity(0.1),
                      prefixIcon: const Icon(
                        Icons.password,
                      ),
                      textEditingController: controller.passwordController,
                    ),
                  ],
                ),
                BorderRadiusButtonSolidColor(
                  height: 80,
                  width: double.maxFinite,
                  color: kPrimaryColor,
                  text: 'Register Now',
                  textColor: Colors.white,
                  onPressed: () => Get.to(
                    const HomeView(),
                  ),
                ),
                const Center(child: Text("Or")),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: kPrimaryColor,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/auth/google.png'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Text(
                          "Sign In with Google",
                          style: TextStyle(
                            fontSize: 16,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: kPrimaryColor),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
