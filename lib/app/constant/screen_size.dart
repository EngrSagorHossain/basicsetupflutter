import 'package:flutter/cupertino.dart';

class ScreenUtil {
  static late double _screenHeight;
  static late double _screenWidth;

  static void init(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  static double getScreenHeight() {
    return _screenHeight;
  }

  static double getScreenWidth() {
    return _screenWidth;
  }
}
