import 'package:flutter/material.dart';

class Serce extends StatefulWidget {
  @override
  _SerceState createState() => _SerceState();
}

class _SerceState extends State<Serce> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: Colors.grey[100],
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
