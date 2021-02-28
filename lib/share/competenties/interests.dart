import 'package:animation_routes_riverpod_divizion/share/frame.dart';
import 'package:flutter/material.dart';

class Interests extends StatefulWidget {
  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<EdgeInsets> _padding;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _padding = EdgeInsetsTween(
            begin: EdgeInsets.symmetric(vertical: 100), end: EdgeInsets.all(8))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Padding(
                    padding: _padding.value,
                    child: child,
                  ),
                  child: Frame(
                      color: Colors.red,
                      width: 60,
                      height: 80,
                      assets: 'assets/dartlogo.png'),
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Padding(
                    padding: _padding.value,
                    child: child,
                  ),
                  child: Frame(
                      color: Colors.red,
                      width: 60,
                      height: 80,
                      assets: 'assets/barca.png'),
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Padding(
                    padding: _padding.value,
                    child: child,
                  ),
                  child: Frame(
                      color: Colors.red,
                      width: 60,
                      height: 80,
                      assets: 'assets/photoshop.png'),
                ),
              ],
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => Padding(
                padding: _padding.value,
                child: child,
              ),
              child: Frame(
                  color: Colors.blue,
                  width: 180,
                  height: 180,
                  assets: 'assets/flutter.png'),
            ),
            Row(
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Padding(
                    padding: _padding.value,
                    child: child,
                  ),
                  child: Frame(
                      color: Colors.green,
                      width: 70,
                      height: 90,
                      assets: 'assets/visual.jpeg'),
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Padding(
                    padding: _padding.value,
                    child: child,
                  ),
                  child: Frame(
                      color: Colors.green,
                      width: 70,
                      height: 90,
                      assets: 'assets/illustrator.png'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Frame(
                    color: Colors.purple,
                    width: 95,
                    height: 80,
                    assets: 'assets/saun.jpg'),
                SizedBox(
                  width: 8,
                ),
                Frame(
                    color: Colors.purple,
                    width: 95,
                    height: 80,
                    assets: 'assets/swiming.jpg'),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Frame(
                  color: Colors.yellow,
                  width: 100,
                  height: 150,
                  assets: 'assets/solid.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Frame(
                  color: Colors.yellow,
                  width: 100,
                  height: 150,
                  assets: 'assets/chess.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Frame(
                  color: Colors.yellow,
                  width: 100,
                  height: 150,
                  assets: 'assets/foto.jpg'),
            ),
          ],
        )
      ],
    );
  }
}
