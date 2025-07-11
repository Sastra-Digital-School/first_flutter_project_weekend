import 'dart:convert';

import 'package:first_project/config/responsive/main_responsive.dart';
import 'package:first_project/modules/home/model/product_model.dart';
import 'package:first_project/modules/home/view/home_view_medium.dart';
import 'package:first_project/modules/home/view/home_view_small.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final _count = 0.obs;

  get getCount => _count.value;

  void setIncrement() => _count.value++;
  void setDecrement() => _count.value--;

  List<String> photo = [
    'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2F75a4a8f4-3874-11ea-ac3c-f68c10993b04?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
    'https://plus.unsplash.com/premium_photo-1682091992663-2e4f4a5534ba?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZSUyMHN0dWRlbnR8ZW58MHx8MHx8fDA%3D',
    'https://thumbs.dreamstime.com/b/male-student-working-desk-chinese-school-26363958.jpg',
    'https://as1.ftcdn.net/jpg/02/57/07/40/1000_F_257074046_HnOJVuJxaTnk9rCOatQjZcmpEd48lNjs.jpg',
    'https://www.universityofcalifornia.edu/sites/default/files/styles/feature_banner_image/public/2022-01/2018_03_12_UCR_day1_post-79.jpg?h=0c170278&itok=6dn4jQxG',
  ];

  List<String> name = [
    'Sithy Chamroeun',
    'Vuthy Chundee',
    'Dara Van',
    'Visal Can',
    'Sokha Teang',
  ];

  List<bool> status = [true, false, true, false, true];

  var islikeList = [true.obs, false.obs, true.obs, false.obs, true.obs].obs;

  void setLike(int index) {
    islikeList[index].value = !islikeList[index].value;
    update();
  }

  var productModel = ProductModel().obs;

  var product = Product().obs;

  var isLoading = true.obs;

  Future<void> fetchDataFromAPi({String? id}) async {
    try {
      isLoading.value = true;

      Uri url;

      if (id == null) {
        url = Uri.https('dummyjson.com', '/products');
      } else {
        url = Uri.https('dummyjson.com', '/products/$id');
      }

      var response = await http.get(url);

      if (id == null) {
        productModel.value = productModelFromJson(response.body);
      } else {
        product.value = Product.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() async {
    super.onInit();
    await fetchDataFromAPi();
  }
}

class HomeResponesive extends StatefulWidget {
  const HomeResponesive({super.key});

  @override
  State<HomeResponesive> createState() => _HomeResponesiveState();
}

class _HomeResponesiveState extends State<HomeResponesive> {
  @override
  Widget build(BuildContext context) {
    return MainResponsiveScreenUtil(
      small: HomeViewSmall(),
      medium: HomeViewMedium(),
      large: Container(),
    );
  }
}
