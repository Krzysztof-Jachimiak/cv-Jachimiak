import 'dart:async';
import 'dart:math' as math;
import 'package:animation_routes_riverpod_divizion/screens/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:get/get.dart';
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
                ColorTween(begin: Colors.transparent, end: Colors.white),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'color')
        .addAnimatable(
            animatable: Tween<double>(begin: 120, end: 320),
            curve: (Curves.elasticOut),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'margin')
        .addAnimatable(
            animatable: Tween<double>(begin: 135, end: 135),
            curve: (Curves.elasticOut),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'margin1')
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
    return Container(
      color: Colors.black,
      child: AnimatedBuilder(
          animation: firstAnimController,
          builder: (BuildContext context, Widget child) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.lightBlue[200],
                    backgroundImage: AssetImage(
                      'assets/profilePicture.png',
                    ),
                    radius: 100,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  color: sequenceAnimation['circle'].value,
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: sequenceAnimation['margin'].value),
                  child: AnimacjaCv(),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, MediaQuery.of(context).size.width * 1, 0, 0),
                  child: Text(' Krzysztof Jachimiak',
                      style: GoogleFonts.lato(
                          color: sequenceAnimation['color'].value,
                          fontSize: 32,
                          fontWeight: FontWeight.w300)),
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
    return AnimatedBuilder(
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
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
