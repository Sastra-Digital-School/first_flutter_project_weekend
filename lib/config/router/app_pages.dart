import 'package:first_project/config/router/app_routes.dart';
import 'package:first_project/modules/home/binding/home_binding.dart';
import 'package:first_project/modules/home/view/home_view.dart';
import 'package:first_project/modules/screen/dashboard_screen.dart';
import 'package:get/get.dart';

class AppRouting {
  static final route =
      RouteView.values.map((e) {
        switch (e) {
          case RouteView.home:
            return GetPage(
              name: "/",
              page: () => HomeView(),
              binding: HomeBinding(),
              transition: Transition.noTransition,
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
