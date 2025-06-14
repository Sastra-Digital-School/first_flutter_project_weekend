import 'package:first_project/modules/main/main_controller.dart';
import 'package:first_project/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
      bottomNavigationBar: _buildBottomNavigationBar,
    );
  }

  get _buildBody {
    return Obx(() {
      return controller.pageList[controller.getCurrentIndex];
    });
  }

  get _buildBottomNavigationBar {
    return BottomNavigationWidget(
      onChange: (index) {
        controller.setCurrentIndex(index);
      },
    );
  }
}
