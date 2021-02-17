import 'package:animation_routes_riverpod_divizion/screens/intro.dart';
import 'package:animation_routes_riverpod_divizion/screens/tab_bar.dart';
import 'package:animation_routes_riverpod_divizion/share/services.dart';
import 'package:animation_routes_riverpod_divizion/strings/competenties.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  set();
  Get.put(StringCEduController());
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: TabScreens(),
        //body: Intro(),
      ),
    ),
  );
}
