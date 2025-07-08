import 'package:first_project/modules/menu/controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends GetView<MenusController> {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: Obx(
        () =>
            controller.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : _buildBody,
      ),
    );
  }

  get _buildAppBar {
    return AppBar(title: Text('Menu Screen'));
  }

  get _buildBody {
    var datas = controller.productModel.value;
    return ListView.builder(
      itemCount: datas.products?.length,
      itemBuilder: (context, index) {
        var data = datas.products?[index];
        return MenuCardWidget(
          thumbnail: data?.thumbnail ?? '',
          title: data?.title ?? '',
          price: data?.price.toString() ?? '',
        );
      },
    );
  }
}

class MenuCardWidget extends StatelessWidget {
  final String thumbnail;
  final String title;
  final String price;

  const MenuCardWidget({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.2))],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 20,
          children: [
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 18)),
                Text(price, style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
