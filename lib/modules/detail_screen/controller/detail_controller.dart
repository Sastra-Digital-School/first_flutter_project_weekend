import 'dart:convert';

import 'package:first_project/modules/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailController extends GetxController {
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
    await fetchDataFromAPi(id: Get.parameters['id']);
  }
}
