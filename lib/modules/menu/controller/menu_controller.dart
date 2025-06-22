import 'package:first_project/core/service/api_service.dart';
import 'package:first_project/modules/home/model/product_model.dart';
import 'package:get/get.dart';

class MenusController extends GetxController {
  ApiService get apiService => ApiService(baseUrl: 'https://dummyjson.com');

  var productModel = ProductModel().obs;

  var product = Product().obs;

  var isLoading = true.obs;

  Future<void> fetchDataFromAPi({String? id}) async {
    isLoading.value = true;
    productModel.value = await apiService.callApi(
      endpoint: '/products',
      fromJson: (data) => ProductModel.fromJson(data),
    );
    isLoading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await fetchDataFromAPi();
  }
}
