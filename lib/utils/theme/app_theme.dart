
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_laundry/utils/app_colors.dart';

class AppTheme {

  /// App Theme here
  static ThemeData themeData = ThemeData(
    /// Default font setup
    fontFamily: GoogleFonts.poppins().fontFamily,

    /// Font style setup
    textTheme: const TextTheme(
      titleMedium: TextStyle(color: AppColor.textColor2,fontSize: 18),
      displayMedium: TextStyle(color: AppColor.textColor2,fontSize: 15),
      headlineMedium: TextStyle(color: AppColor.textColor1,fontSize: 15),

      titleLarge: TextStyle(color: AppColor.textColor2,fontSize: 14,fontWeight: FontWeight.w600),
      displayLarge: TextStyle(color: AppColor.greyColor,fontSize: 14,fontWeight: FontWeight.w600),
    )
  );

}