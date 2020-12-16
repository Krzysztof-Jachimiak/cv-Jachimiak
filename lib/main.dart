//import 'package:animation_routes_riverpod_divizion/home.dart';
import 'package:animation_routes_riverpod_divizion/screens/pierwsza_animacja.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: PierwszaAnimacja(),
        ),
      ),
    ),
  );
}
