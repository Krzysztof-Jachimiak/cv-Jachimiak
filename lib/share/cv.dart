import 'package:animation_routes_riverpod_divizion/model/the_chapter.dart';
import 'package:animation_routes_riverpod_divizion/screens/details.dart';
import 'package:animation_routes_riverpod_divizion/share/competenties/education.dart';
import 'package:animation_routes_riverpod_divizion/share/competenties/experience.dart';
import 'package:animation_routes_riverpod_divizion/share/competenties/interests.dart';
import 'package:animation_routes_riverpod_divizion/share/competenties/skilss.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Cv extends StatefulWidget {
  @override
  _CvState createState() => _CvState();
}

class _CvState extends State<Cv> {
  List<Widget> _rozdzialTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _dodajRozdzialy();
  }

  void _dodajRozdzialy() {
    // get data from db
    List<TheChapter> _rozdzialy = [
      TheChapter(
        title: 'Doświadczenie',
        img: 'assets/experience.png',
        details: Experience(),
      ),
      TheChapter(
          title: 'Umiejętności', img: 'assets/skils.png', details: Skills()),
      TheChapter(
          title: 'Wykształcenie',
          img: 'assets/education.png',
          details: Education()),
      TheChapter(
          title: 'Zainteresowania',
          img: 'assets/interests.png',
          details: Interests()),
    ];

    _rozdzialy.forEach((TheChapter rozdzial) {
      _rozdzialTiles.add(_buildTile(rozdzial));
    });
  }

  Widget _buildTile(TheChapter rozdzial) {
    return Card(
      borderOnForeground: false,
      elevation: 0,
      color: AppColors.cardColor,
      child: ListTile(
        onTap: () {
          Get.to(Details(chapter: rozdzial));
        },
        contentPadding: EdgeInsets.all(8),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              rozdzial.title,
              style: styleHeadWhite,
            ),
          ],
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            height: 48,
            child: Hero(
              tag: rozdzial.img,
              child: Image.asset(
                rozdzial.img,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        //trailing: Text('\$${rozdzial.opis}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _rozdzialTiles.length,
        itemBuilder: (context, index) {
          return _rozdzialTiles[index];
        });
  }
}
