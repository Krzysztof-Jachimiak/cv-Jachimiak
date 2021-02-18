import 'package:animation_routes_riverpod_divizion/services/remote_services.dart';
import 'package:get/state_manager.dart';

import 'package:get/get_instance/get_instance.dart';

class ProductController extends GetxController {
  static ProductController get the => Get.find<ProductController>();
  var isLoading = true.obs;
  List productList = [].obs;
  final crossAxisCound1 = 1.obs;

  @override
  void onInit() {
    fethProduct();
    twoAxisLine();
    oneAxisLine();
    super.onInit();
  }

  void fethProduct() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fethProduct();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

  twoAxisLine() {
    if (crossAxisCound1.value <= 1) {
      crossAxisCound1(crossAxisCound1.value + 1);
    } else {
      crossAxisCound1(crossAxisCound1.value + 0);
    }
  }

  oneAxisLine() {
    if (crossAxisCound1.value >= 2) {
      crossAxisCound1(crossAxisCound1.value - 1);
    } else {
      crossAxisCound1(crossAxisCound1.value + 0);
    }
  }
}
