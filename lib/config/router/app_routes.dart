import 'package:get/get.dart';

enum RouteView { main, home, detail, dashboard }

extension AppPages on RouteView {
  // Use: RouteView.home.go()

  Future<void> go({
    bool replacment = false,
    bool clearAll = false,
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) async {
    if (clearAll) {
      return Get.offAllNamed(
        '/$name',
        arguments: arguments,
        id: id,
        parameters: parameters,
      );
    } else if (replacment) {
      return Get.offAndToNamed(
        '/$name',
        arguments: arguments,
        id: id,
        parameters: parameters,
      );
    } else {
      return Get.toNamed(
        '/$name',
        arguments: arguments,
        id: id,
        parameters: parameters,
      );
    }
  }
}
