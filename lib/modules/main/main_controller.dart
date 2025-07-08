import 'package:first_project/modules/favorite/view/favorite_view.dart';
import 'package:first_project/modules/home/controller/home_controller.dart';
import 'package:first_project/modules/menu/view/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final _currentIndex = 0.obs;

  get getCurrentIndex => _currentIndex.value;

  void setCurrentIndex(int index) {
    _currentIndex.value = index;
  }

  var pageList =
      [HomeResponesive(), MenuScreen(), FavoriteScreen(), SizedBox()].obs;
}
