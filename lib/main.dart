import 'package:animation_routes_riverpod_divizion/controllers/product_controller.dart';
import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:animation_routes_riverpod_divizion/screens/intro.dart';
import 'package:animation_routes_riverpod_divizion/services/services.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  set();
  Get.put(StringCEduController());
  Get.put(ProductController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // body: TabScreens(),
        body: Intro(),
      ),
    ),
  );
}
