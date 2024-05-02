import 'package:basice_setup/app/colors/app_colors.dart';
import 'package:flutter/material.dart';

class BorderRadiusButtonSolidColor extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;
  final Color textColor;
  final VoidCallback onPressed;

  const BorderRadiusButtonSolidColor({
    required this.height,
    required this.width,
    required this.color,
    required this.text,
    required this.textColor,
    super.key,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          side: const BorderSide(color: kPrimaryColor, width: 1), // Add border
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
