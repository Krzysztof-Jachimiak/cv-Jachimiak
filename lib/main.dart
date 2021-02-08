import 'package:animation_routes_riverpod_divizion/screens/intro.dart';
import 'package:animation_routes_riverpod_divizion/share/services.dart';
import 'package:flutter/material.dart';

void main() {
  set();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        //body: Second(),
        body: Intro(),
      ),
    ),
  );
}
