import 'dart:async';
import 'dart:math' as math;
import 'package:animation_routes_riverpod_divizion/screens/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  AnimationController firstAnimController;
  SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    super.initState();
    _loadWidget();

    firstAnimController = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable:
                ColorTween(begin: Colors.transparent, end: Colors.red[20]),
            from: Duration(seconds: 0),
            to: Duration(seconds: 2),
            tag: 'color1')
        .addAnimatable(
            animatable:
                ColorTween(begin: Colors.transparent, end: Colors.white),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'color')
        .addAnimatable(
            animatable: ColorTween(begin: Colors.purple, end: Colors.white),
            from: Duration(seconds: 3),
            to: Duration(seconds: 4),
            tag: 'aria')
        .addAnimatable(
            animatable: Tween<double>(begin: 20, end: 100),
            curve: (Curves.elasticOut),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'width')
        .addAnimatable(
            animatable: Tween<double>(begin: 150, end: 330),
            curve: (Curves.elasticOut),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'padding')
        .addAnimatable(
            animatable: Tween<double>(begin: 135, end: 135),
            curve: (Curves.elasticOut),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'padding1')
        .addAnimatable(
            animatable:
                ColorTween(begin: Colors.black, end: Colors.transparent),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'circle')
        .animate(firstAnimController);
    firstAnimController.forward();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: 6);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => TabScreens()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBuilder(
          animation: firstAnimController,
          builder: (BuildContext context, Widget child) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 100,
                    horizontal: 110,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.lightBlue[200],
                    backgroundImage: AssetImage(
                      'assets/ja.png',
                    ),
                    radius: 100,
                  ),
                ),
                Container(
                  color: sequenceAnimation['circle'].value,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: sequenceAnimation['padding1'].value,
                      vertical: sequenceAnimation['padding'].value),
                  child: AnimacjaCv(),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 420, 0, 0),
                  child: Container(
                    child: Text(' Krzysztof Jachimiak',
                        style: GoogleFonts.lato(
                            color: sequenceAnimation['color'].value,
                            fontSize: 40,
                            fontWeight: FontWeight.w300)),
                  ),
                ),
              ],
            );
          }),
    );
  }

  @override
  void dispose() {
    firstAnimController.dispose();
    super.dispose();
  }
}

class AnimacjaCv extends StatefulWidget {
  @override
  _AnimacjaCvState createState() => _AnimacjaCvState();
}

class _AnimacjaCvState extends State<AnimacjaCv>
    with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    final curvedAnimation = CurvedAnimation(
      parent: animController,
      curve: Curves.easeInQuint,
    );

    animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(curvedAnimation);
    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: AnimatedBuilder(
        animation: animController,
        builder: (context, child) {
          return Transform.rotate(
            angle: animation.value,
            child: child,
          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            'C.V',
            style: TextStyle(fontSize: 60, color: Colors.grey[300]),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
