import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:basice_setup/app/modules/initial_controller/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  initAllNeededController();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Setup",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}
