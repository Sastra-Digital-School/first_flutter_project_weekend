// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class AppTextStyle {
//   AppTextStyle._();

//   static TextStyle battamBong14({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 14,
//       fontFamily: 'Battambang',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBong15({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 15,
//       fontFamily: 'Battambang',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBong16({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 16,
//       fontFamily: 'Battambang',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBong18({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 18,
//       fontFamily: 'Battambang',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBongBold18({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 18,
//       fontFamily: 'Battambang-Bold',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBongBold16({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 16,
//       fontFamily: 'Battambang-Bold',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBongBold20({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 20,
//       fontFamily: 'Battambang-Bold',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle battamBong20({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 20,
//       fontFamily: 'Battambang',
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle regular10({
//     double? height,
//     Color? color,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       decoration:
//           underline == true ? TextDecoration.underline : TextDecoration.none,
//       fontSize: Get.locale == const Locale('en', 'US') ? 10 : 10,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle regular11({
//     double? height,
//     Color? color,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       decoration:
//           underline == true ? TextDecoration.underline : TextDecoration.none,
//       fontSize: Get.locale == const Locale('en', 'US') ? 11 : 11,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle regular12({
//     double? height,
//     Color? color,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       decoration:
//           underline == true ? TextDecoration.underline : TextDecoration.none,
//       fontSize: Get.locale == const Locale('en', 'US') ? 14 : 12,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle regular13({
//     double? height,
//     Color? color,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       decoration:
//           underline == true ? TextDecoration.underline : TextDecoration.none,
//       fontSize: Get.locale == const Locale('en', 'US') ? 15 : 13,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle regular14({
//     double? height,
//     Color? color,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       decoration:
//           underline == true ? TextDecoration.underline : TextDecoration.none,
//       fontSize: Get.locale == const Locale('en', 'US') ? 14 : 14,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle regular14s({
//     double? height,
//     Color? color,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       height: height,
//       fontFamily: 'SourceSansPro-Regular',
//       decoration:
//           underline == true ? TextDecoration.underline : TextDecoration.none,
//       fontSize: 14,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle regular16({
//     Color? color,
//     double? height,
//     String? fontFamily,
//     bool? underline,
//     FontStyle? fontStyle,
//   }) {
//     return TextStyle(
//       decoration: underline == true ? TextDecoration.underline : null,
//       fontWeight: FontWeight.normal,
//       fontStyle: fontStyle ?? FontStyle.normal,
//       fontSize: Get.locale == const Locale('en', 'US') ? 16 : 16,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular17({
//     Color? color,
//     double? height,
//     String? fontFamily,
//     bool? underline,
//     FontStyle? fontStyle,
//   }) {
//     return TextStyle(
//       decoration: underline == true ? TextDecoration.underline : null,
//       fontWeight: FontWeight.normal,
//       fontStyle: fontStyle ?? FontStyle.normal,
//       fontSize: Get.locale == const Locale('en', 'US') ? 17 : 17,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular16NoKhmer({
//     Color? color,
//     double? height,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 16,
//       fontFamily: 'SourceSansPro-Regular',
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular15({
//     Color? color,
//     double? height,
//     bool? underline,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       decoration: underline == true ? TextDecoration.underline : null,
//       fontWeight: FontWeight.normal,
//       fontSize: Get.locale == const Locale('en', 'US') ? 15 : 15,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular18({
//     Color? color,
//     double? height,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: Get.locale == const Locale('en', 'US') ? 18 : 18,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular19({
//     Color? color,
//     double? height,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: Get.locale == const Locale('en', 'US') ? 18 : 16,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular20({
//     Color? color,
//     double? height,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: Get.locale == const Locale('en', 'US') ? 20 : 20,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Regular'
//               : 'Battambang'),
//       color: color ?? Colors.black,
//       height: height,
//     );
//   }

//   static TextStyle regular22({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 22,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle regular24({Color? color, double? height}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 24,
//       color: color ?? AppColors.white,
//       height: height,
//     );
//   }

//   static TextStyle regular28({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.normal,
//       fontSize: 28,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle medium14({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.w500,
//       fontSize: 14,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle medium16({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.w500,
//       fontSize: 16,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle medium18({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.w500,
//       fontSize: 18,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle medium28({Color? color}) {
//     return TextStyle(
//       fontWeight: FontWeight.w500,
//       fontSize: 28,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold14({Color? color, double? height, String? fontFamily}) {
//     return TextStyle(
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontWeight: FontWeight.bold,
//       fontSize: Get.locale == const Locale('en', 'US') ? 14 : 13,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold15({Color? color, double? height, String? fontFamily}) {
//     return TextStyle(
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontWeight: FontWeight.bold,
//       fontSize: Get.locale == const Locale('en', 'US') ? 15 : 14,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold14NoKh({
//     Color? color,
//     double? height,
//     String? fontFamily,
//   }) {
//     return TextStyle(
//       height: height,
//       fontFamily: fontFamily ?? 'SourceSansPro-Bold',
//       fontWeight: FontWeight.bold,
//       fontSize: 14,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold10({Color? color}) {
//     return TextStyle(
//       fontFamily: 'SourceSansPro-Bold',
//       fontSize: 10,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold5({Color? color}) {
//     return TextStyle(
//       fontFamily: 'SourceSansPro-Bold',
//       fontSize: 5,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold12({Color? color, double? height, String? fontFamily}) {
//     return TextStyle(
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontWeight: FontWeight.bold,
//       fontSize: Get.locale == const Locale('en', 'US') ? 12 : 12,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold17({Color? color, double? height, String? fontFamily}) {
//     return TextStyle(
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontWeight: FontWeight.bold,
//       fontSize: Get.locale == const Locale('en', 'US') ? 17 : 15,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold18({Color? color, double? height, String? fontFamily}) {
//     return TextStyle(
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontWeight: FontWeight.bold,
//       fontSize: Get.locale == const Locale('en', 'US') ? 18 : 18,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold16({Color? color, double? height, String? fontFamily}) {
//     return TextStyle(
//       height: height,
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontWeight: FontWeight.bold,
//       fontSize: Get.locale == const Locale('en', 'US') ? 16 : 14,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold13({Color? color}) {
//     return TextStyle(
//       fontFamily: 'SourceSansPro-Bold',
//       fontSize: 13,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold19({Color? color, double? height}) {
//     return TextStyle(
//       fontFamily: 'SourceSansPro-Bold',
//       height: height,
//       fontSize: 19,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold20({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 20 : 20,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold22({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 22 : 19,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold24({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily: fontFamily ?? 'SourceSansPro-Bold',
//       fontSize: 24,
//       color: color ?? AppColors.white,
//     );
//   }

//   static TextStyle bold26({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 26 : 20,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle bold28({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 28 : 22,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle bold35({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 35 : 25,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle bold25({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 25 : 25,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle bold40({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily:
//           fontFamily ??
//           (Get.locale == const Locale('en', 'US')
//               ? 'SourceSansPro-Bold'
//               : 'Battambang-Bold'),
//       fontSize: Get.locale == const Locale('en', 'US') ? 40 : 30,
//       color: color ?? Colors.black,
//     );
//   }

//   static TextStyle bold50({Color? color, String? fontFamily}) {
//     return TextStyle(
//       fontFamily: fontFamily ?? 'SourceSansPro-Bold',
//       fontSize: 50,
//       color: color ?? AppColors.white,
//     );
//   }
// }
