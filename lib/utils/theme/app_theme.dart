
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_laundry/utils/app_colors.dart';

class AppTheme {

  /// App Theme here
  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: const TextTheme(
      titleMedium: TextStyle(color: AppColor.textColor2,fontSize: 18),
      displayMedium: TextStyle(color: AppColor.textColor2,fontSize: 15),
      headlineMedium: TextStyle(color: AppColor.textColor1,fontSize: 15),
    )
  );

}