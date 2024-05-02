import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';

TextStyle kBoldPrimaryText = GoogleFonts.poppins().copyWith(
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
  fontSize: 33,
);
TextStyle kBoldBlackText = GoogleFonts.poppins().copyWith(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 33,
);

TextStyle kNormalBlackText({required fontSize}) =>
    GoogleFonts.poppins().copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: fontSize,
    );
TextStyle kBoldWhiteText = GoogleFonts.poppins().copyWith(
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 33,
);

TextStyle kNormalWhiteText({required double fontSize}) =>
    GoogleFonts.poppins().copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: fontSize,
    );
