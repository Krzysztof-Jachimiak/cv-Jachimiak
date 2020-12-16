import 'dart:async';
import 'dart:math' as math;
import 'package:animation_routes_riverpod_divizion/screens/home.dart';
import 'package:animation_routes_riverpod_divizion/screens/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class PierwszaAnimacja extends StatefulWidget {
  @override
  _PierwszaAnimacjaState createState() => _PierwszaAnimacjaState();
}

class _PierwszaAnimacjaState extends State<PierwszaAnimacja>
    with SingleTickerProviderStateMixin {
  AnimationController kontrolejPierwszejAnimacji;
  SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    super.initState();
    _loadWidget();

    kontrolejPierwszejAnimacji = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable:
                ColorTween(begin: Colors.transparent, end: Colors.red[20]),
            from: Duration(seconds: 0),
            to: Duration(seconds: 2),
            tag: 'color1')
        .addAnimatable(
            animatable:
                ColorTween(begin: Colors.transparent, end: Colors.purple),
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
            animatable: Tween<double>(begin: 120, end: 290),
            curve: (Curves.elasticOut),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: 'padding')
        .addAnimatable(
            animatable: Tween<double>(begin: 100, end: 95),
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
        .animate(kontrolejPierwszejAnimacji);
    kontrolejPierwszejAnimacji.forward().whenComplete(() => Home());
  }

  _loadWidget() async {
    var _duration = Duration(seconds: 6);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Second()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBuilder(
          animation: kontrolejPierwszejAnimacji,
          builder: (BuildContext context, Widget child) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 120,
                    horizontal: 110,
                  ),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/daria.jpg'),
                  ),
                ),
                Container(
                  color: sequenceAnimation['circle'].value,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: sequenceAnimation['padding1'].value,
                      vertical: sequenceAnimation['padding'].value),
                  child: AnimationPage(),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(180, 350, 0, 0),
                  child: Text('aria',
                      style: TextStyle(
                          color: sequenceAnimation['color'].value,
                          fontSize: 50)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 50,
                    color: sequenceAnimation['color1'].value,
                    // width: sequenceAnimation['width'].value,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            );
          }),
    );
  }

  @override
  void dispose() {
    kontrolejPierwszejAnimacji.dispose();
    super.dispose();
  }
}

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
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
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        // if (status == AnimationStatus.completed) {
        //   animController.reverse();
        // } else if (status == AnimationStatus.dismissed) {
        animController.forward();
        // }
      });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Transform.rotate(
        angle: animation.value,
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.fromLTRB(50, 50, 0, 0),
          child: Text(
            'D',
            style: TextStyle(fontSize: 60, color: Colors.pink),
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
