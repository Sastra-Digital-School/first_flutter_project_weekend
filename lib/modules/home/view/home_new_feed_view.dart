import 'package:first_project/modules/home/controller/home_controller.dart';
import 'package:first_project/widgets/new_feed_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNewFeedView extends GetView<HomeController> {
  const HomeNewFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody);
  }

  get _buildBody {
    return _buildNewFeed;
  }

  get _buildNewFeed {
    return ListView.builder(
      itemCount: controller.photo.length,
      itemBuilder: (context, index) {
        return Obx(
          () => GestureDetector(
            onTap: () {
              // Get.off(DashboardScreen());
              // Get.offAndToNamed('/dashboard');
              // Get.showSnackbar(
              //   GetSnackBar(
              //     title: controller.name[index],
              //     message: '${controller.name[index]} is clicked',
              //     duration: Duration(seconds: 2),
              //     backgroundColor: Colors.green,
              //     borderRadius: 20,
              //     margin: EdgeInsets.all(20),
              //     snackPosition: SnackPosition.TOP,
              //   ),
              // );
            },
            child: NewFeedCardWidget(
              profileName: controller.name[index],
              duration: '${5 + index}min .',
              profilePhoto: controller.photo[0],
              photo: controller.photo[index],
              isPrivate: controller.status[index],
              isLiked: controller.islikeList[index].value,
              onTap: (i, isLike) {
                controller.setLike(index);
              },
            ),
          ),
        );
      },
    );
  }
}
