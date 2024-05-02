import 'package:flutter/material.dart';

class CustomTextFieldWithIcon extends StatelessWidget {
  final String hintText;
  final bool? obscureText;
  final TextEditingController textEditingController;
  final Color fillColor;
  final Widget prefixIcon;
  const CustomTextFieldWithIcon({
    super.key,
    required this.hintText,
    required this.fillColor,
    required this.prefixIcon,
    required this.textEditingController,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText == null ? false : true,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: fillColor,
          filled: true,
          prefixIcon: prefixIcon,
        ));
  }
}
