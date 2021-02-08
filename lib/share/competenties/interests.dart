import 'package:animation_routes_riverpod_divizion/share/style.dart';
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
    return Container(
      color: Colors.blueGrey[300],
      child: Row(
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
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 60,
                        height: 80,
                        decoration: dekoracja.copyWith(color: Colors.red),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/dartlogo.png'))),
                        width: 50,
                        height: 70,
                      ),
                    ]),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) => Padding(
                      padding: _padding.value,
                      child: child,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 60,
                        height: 80,
                        decoration: dekoracja.copyWith(color: Colors.red),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/barca.png'))),
                        width: 50,
                        height: 70,
                      ),
                    ]),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) => Padding(
                      padding: _padding.value,
                      child: child,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 60,
                        height: 80,
                        decoration: dekoracja.copyWith(color: Colors.red),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/photoshop.png'))),
                        width: 50,
                        height: 70,
                      ),
                    ]),
                  ),
                ],
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) => Padding(
                  padding: _padding.value,
                  child: child,
                ),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: dekoracja.copyWith(color: Colors.blue),
                  ),
                  Container(
                    decoration: dekoracja.copyWith(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/flutter.png'))),
                    width: 160,
                    height: 160,
                  ),
                ]),
              ),
              Row(
                children: [
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) => Padding(
                      padding: _padding.value,
                      child: child,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 70,
                        height: 90,
                        decoration: dekoracja.copyWith(color: Colors.green),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/visual.jpeg'))),
                        width: 60,
                        height: 80,
                      ),
                    ]),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) => Padding(
                      padding: _padding.value,
                      child: child,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 70,
                        height: 90,
                        decoration:
                            dekoracja.copyWith(color: Colors.green[800]),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/illustrator.png'))),
                        width: 60,
                        height: 80,
                      ),
                    ]),
                  ),
                ],
              ),
              Row(
                children: [
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) => Padding(
                      padding: _padding.value,
                      child: child,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: dekoracja.copyWith(color: Colors.purple),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/sauna.jpg'))),
                        width: 90,
                        height: 70,
                      ),
                    ]),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) => Padding(
                      padding: _padding.value,
                      child: child,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: dekoracja.copyWith(color: Colors.purple),
                      ),
                      Container(
                        decoration: dekoracja.copyWith(
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/plywanie.jpg'))),
                        width: 90,
                        height: 70,
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: dekoracja.copyWith(color: Colors.amber),
                  ),
                  Container(
                    decoration: dekoracja.copyWith(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/solid.jpeg'))),
                    width: 85,
                    height: 135,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: dekoracja.copyWith(color: Colors.amber),
                  ),
                  Container(
                    decoration: dekoracja.copyWith(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/szachy.png'))),
                    width: 85,
                    height: 135,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: dekoracja.copyWith(color: Colors.amber),
                  ),
                  Container(
                    decoration: dekoracja.copyWith(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/foto.jpg'))),
                    width: 85,
                    height: 135,
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
