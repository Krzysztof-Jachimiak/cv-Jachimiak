import 'package:animation_routes_riverpod_divizion/screens/intro.dart';
import 'package:animation_routes_riverpod_divizion/screens/second_page.dart';

import 'package:animation_routes_riverpod_divizion/share/services.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  set();
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          //body: Second(),
          body: PierwszaAnimacja(),
        ),
      ),
    ),
  );
}
