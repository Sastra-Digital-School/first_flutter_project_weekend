import 'package:first_project/config/router/app_routes.dart';
import 'package:first_project/modules/detail_screen/binding/detail_binding.dart';
import 'package:first_project/modules/detail_screen/view/detail_screen.dart';
import 'package:first_project/modules/home/binding/home_binding.dart';
import 'package:first_project/modules/home/view/home_view.dart';
import 'package:first_project/modules/main/main_binding.dart';
import 'package:first_project/modules/main/main_screen.dart';
import 'package:first_project/modules/screen/dashboard_screen.dart';
import 'package:get/get.dart';

class AppRouting {
  static final route =
      RouteView.values.map((e) {
        switch (e) {
          case RouteView.main:
            return GetPage(
              name: "/",
              page: () => MainScreen(),
              binding: MainBinding(),
              transition: Transition.noTransition,
            );
          case RouteView.home:
            return GetPage(
              name: "/${e.name}",
              page: () => HomeView(),
              binding: InitBinding(),
              transition: Transition.noTransition,
            );
          case RouteView.detail:
            return GetPage(
              name: "/${e.name}",
              page: () => DetailView(),
              binding: DetailBinding(),
            );
          case RouteView.dashboard:
            return GetPage(
              name: "/${e.name}",
              page: () => DashboardScreen(),
              transition: Transition.noTransition,
            );
        }
      }).toList();
}
