import 'package:animation_routes_riverpod_divizion/model/the_chapter.dart';
import 'package:animation_routes_riverpod_divizion/share/heart.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Details extends StatelessWidget {
  final TheChapter chapter;
  Details({@required this.chapter});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blueGrey[300],
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Stack(children: [
              Container(
                color: Colors.deepOrange,
                height: 280,
                alignment: Alignment.topCenter,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Hero(
                      tag: chapter.img,
                      child: Image.asset(
                        chapter.img,
                        height: 220,
                        scale: 0.01,
                        alignment: Alignment.topCenter,
                      )),
                  ListTile(
                      title: Text(chapter.title, style: styleHeadWhite),
                      trailing: Heart()),
                  Container(
                    child: Padding(
                        padding: EdgeInsets.all(18), child: (chapter.details)),
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
