import 'package:first_project/config/router/app_pages.dart';
import 'package:first_project/config/router/app_routes.dart';
import 'package:first_project/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: RouteView.home.name,
      getPages: AppRouting.route,
    );
  }
}
