import 'package:first_project/config/router/app_pages.dart';
import 'package:first_project/config/router/app_routes.dart';
import 'package:first_project/config/theme/app_theme.dart';
import 'package:first_project/modules/home/binding/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(834, 1112),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: RouteView.main.name,
          initialBinding: InitBinding(),
          getPages: AppRouting.route,
        );
      },
    );
  }
}
