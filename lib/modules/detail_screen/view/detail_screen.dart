import 'package:first_project/config/function/function.dart';
import 'package:first_project/config/theme/app_theme.dart';
import 'package:first_project/core/data/data.dart';
import 'package:first_project/modules/detail_screen/controller/detail_controller.dart';
import 'package:first_project/modules/favorite/controller/favorite_controller.dart';
import 'package:first_project/widgets/card_detail_page_view_widget.dart';
import 'package:first_project/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends GetView<DetailController> {
  final favoriteController = Get.put(FavoriteController());

  DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>
          controller.isLoading.value
              ? Scaffold(body: Center(child: CircularProgressIndicator()))
              : Scaffold(appBar: _buildAppBar, body: _buildBody),
    );
  }

  get _buildAppBar {
    return AppBar(
      toolbarHeight: Get.height * 0.25,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        background: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    Datas.imageBackgroundData[1]['image'] ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 20,
              child: InkWell(
                onTap: () => Get.back(),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ),
            ),
            Positioned(
              top: 60,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  final product = controller.product.value;
                  favoriteController.toggleFavorite(product);
                },
                child: Obx(() {
                  final product = controller.product.value;
                  final isFav = favoriteController.isFavorite(product.id!);
                  return CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.black,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 180, right: 180, top: 10, bottom: 35),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ),
    );
  }

  get _buildBody {
    var data = controller.product.value;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width * 0.6,
                      child: Text(
                        data.title ?? '',
                        style: AppTextStyle.bold25(color: Colors.black),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade500,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star_border_rounded),
                          Text('5.0'),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Brazil', style: AppTextStyle.regular15()),
                    TextButtonWidget(title: '143 reviews'),
                  ],
                ),
              ],
            ),
            Text(
              data.description ?? '',
              style: AppTextStyle.regular15(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            TextButtonWidget(title: 'Read more'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming tours',
                  style: AppTextStyle.bold20(color: Colors.black),
                ),
                TextButtonWidget(title: 'See all'),
              ],
            ),
            SizedBox(
              height: 368,
              child: PageView.builder(
                clipBehavior: Clip.none,
                itemCount: 2,
                controller: PageController(viewportFraction: 0.95),
                itemBuilder: (context, index) {
                  return CardDetailPageViewWidget(
                    imageurl:
                        'https://picsum.photos/id/${index + 1011}/600/400',
                  );
                },
              ),
            ),
          ].withSpaceBetween(height: 20),
        ),
      ),
    );
  }
}
