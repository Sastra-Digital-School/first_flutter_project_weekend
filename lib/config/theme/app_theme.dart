import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blueAccent,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
      primaryColor: colorScheme.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        foregroundColor: Colors.black,
        elevation: 0,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headlineMedium: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800],
        ),
        labelMedium: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey[600],
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      cardTheme: CardThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        shadowColor: Colors.black12,
      ),
      iconTheme: IconThemeData(color: Colors.grey[800]),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: Colors.grey[600],
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        buttonColor: colorScheme.primary,
      ),
    );
  }
}

class AppColors {
  AppColors._();

  static const background = Color(0xFFf4f6f9);
  static const Color cardShadow = Colors.black12;
  static const blur = Color(0xFFe1ecff);
  static var splash = const Color(0xFF063455);
  static var redColor = const Color.fromARGB(255, 175, 12, 0);
  static var green = Colors.green.shade800;
  static const white = Colors.white;
  static const darkColor = Color.fromRGBO(35, 52, 95, 1);
  static const darkColorLight = Color.fromRGBO(57, 77, 127, 1);
  static const darkIconColor = Color.fromRGBO(72, 113, 196, 1);
  static const greyBlue = Color(0xFF677A8A);
  static const grey = Color(0xFFCDCDCD);
  static const blackGrey = Color(0xFF323738);
}

class AppTextStyle {
  AppTextStyle._();

  static TextStyle regular10({
    double? height,
    Color? color,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      decoration:
          underline == true ? TextDecoration.underline : TextDecoration.none,
      fontSize: Get.locale == const Locale('en', 'US') ? 10 : 10,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular11({
    double? height,
    Color? color,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      decoration:
          underline == true ? TextDecoration.underline : TextDecoration.none,
      fontSize: Get.locale == const Locale('en', 'US') ? 11 : 11,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular12({
    double? height,
    Color? color,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      decoration:
          underline == true ? TextDecoration.underline : TextDecoration.none,
      fontSize: Get.locale == const Locale('en', 'US') ? 14 : 12,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular13({
    double? height,
    Color? color,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      decoration:
          underline == true ? TextDecoration.underline : TextDecoration.none,
      fontSize: Get.locale == const Locale('en', 'US') ? 15 : 13,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular14({
    double? height,
    Color? color,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      decoration:
          underline == true ? TextDecoration.underline : TextDecoration.none,
      fontSize: Get.locale == const Locale('en', 'US') ? 14 : 14,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular14s({
    double? height,
    Color? color,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: height,
      fontFamily: 'SourceSansPro-Regular',
      decoration:
          underline == true ? TextDecoration.underline : TextDecoration.none,
      fontSize: 14,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular16({
    Color? color,
    double? height,
    String? fontFamily,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return TextStyle(
      decoration: underline == true ? TextDecoration.underline : null,
      fontWeight: FontWeight.normal,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: Get.locale == const Locale('en', 'US') ? 16 : 16,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular17({
    Color? color,
    double? height,
    String? fontFamily,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return TextStyle(
      decoration: underline == true ? TextDecoration.underline : null,
      fontWeight: FontWeight.normal,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: Get.locale == const Locale('en', 'US') ? 17 : 17,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular16NoKhmer({
    Color? color,
    double? height,
    String? fontFamily,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      fontFamily: 'SourceSansPro-Regular',
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular15({
    Color? color,
    double? height,
    bool? underline,
    String? fontFamily,
  }) {
    return TextStyle(
      decoration: underline == true ? TextDecoration.underline : null,
      fontWeight: FontWeight.normal,
      fontSize: Get.locale == const Locale('en', 'US') ? 15 : 15,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Regular'
              : 'Battambang'),
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle medium14({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle medium16({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold12({Color? color, double? height, String? fontFamily}) {
    return TextStyle(
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Bold'
              : 'Battambang-Bold'),
      fontWeight: FontWeight.bold,
      fontSize: Get.locale == const Locale('en', 'US') ? 12 : 12,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold14({
    Color? color,
    double? height,
    String? fontFamily,
    bool? underline,
  }) {
    return TextStyle(
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Bold'
              : 'Battambang-Bold'),
      fontWeight: FontWeight.bold,
      fontSize: Get.locale == const Locale('en', 'US') ? 14 : 14,
      color: color ?? AppColors.white,
      decoration: underline == true ? TextDecoration.underline : null,
    );
  }

  static TextStyle bold16({Color? color, double? height, String? fontFamily}) {
    return TextStyle(
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Bold'
              : 'Battambang-Bold'),
      fontWeight: FontWeight.bold,
      fontSize: Get.locale == const Locale('en', 'US') ? 14 : 14,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold18({Color? color, double? height, String? fontFamily}) {
    return TextStyle(
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Bold'
              : 'Battambang-Bold'),
      fontWeight: FontWeight.bold,
      fontSize: Get.locale == const Locale('en', 'US') ? 18 : 18,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold20({Color? color, double? height, String? fontFamily}) {
    return TextStyle(
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Bold'
              : 'Battambang-Bold'),
      fontWeight: FontWeight.bold,
      fontSize: Get.locale == const Locale('en', 'US') ? 20 : 20,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold25({Color? color, double? height, String? fontFamily}) {
    return TextStyle(
      height: height,
      fontFamily:
          fontFamily ??
          (Get.locale == const Locale('en', 'US')
              ? 'SourceSansPro-Bold'
              : 'Battambang-Bold'),
      fontWeight: FontWeight.bold,
      fontSize: Get.locale == const Locale('en', 'US') ? 25 : 25,
      color: color ?? AppColors.white,
    );
  }
}
