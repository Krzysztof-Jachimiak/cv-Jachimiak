import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: AppColors.accentColor,
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
