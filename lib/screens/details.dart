import 'package:animation_routes_riverpod_divizion/model/the_chapter.dart';

import 'package:animation_routes_riverpod_divizion/share/heart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Details extends StatelessWidget {
  final TheChapter rozdzial;
  Details({@required this.rozdzial});

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
                      tag: rozdzial.img,
                      child: Image.asset(
                        rozdzial.img,
                        height: 220,
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topCenter,
                      )),
                  ListTile(
                      title: Text(rozdzial.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey[800])),
                      trailing: Heart()),
                  Container(
                    child: Padding(
                        padding: EdgeInsets.all(18), child: (rozdzial.details)),
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
