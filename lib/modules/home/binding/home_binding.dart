import 'package:first_project/modules/home/controller/home_controller.dart';
import 'package:first_project/modules/menu/controller/menu_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MenusController>(() => MenusController());
  }
}
