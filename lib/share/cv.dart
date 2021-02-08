import 'package:animation_routes_riverpod_divizion/model/budowa_rozdzialu.dart';
import 'package:animation_routes_riverpod_divizion/screens/details.dart';
import 'package:animation_routes_riverpod_divizion/share/kompetencje/do%C5%9Bwiadczenie.dart';
import 'package:animation_routes_riverpod_divizion/share/kompetencje/skilss.dart';
import 'package:animation_routes_riverpod_divizion/share/kompetencje/wykszta%C5%82cenie.dart';
import 'package:animation_routes_riverpod_divizion/share/kompetencje/zainteresowania.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

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
    List<BudowaRozdzoalu> _rozdzialy = [
      BudowaRozdzoalu(
        title: 'Doświadczenie',
        img: 'assets/doswiadczenie.png',
        details: Doswiadczenie(),
      ),
      BudowaRozdzoalu(
          title: 'Umiejętności',
          img: 'assets/skils.png',
          details: Umiejetnosci()),
      BudowaRozdzoalu(
          title: 'Wykształcenie',
          img: 'assets/edukacja.png',
          details: Wyksztalcenie()),
      BudowaRozdzoalu(
          title: 'Zainteresowania',
          img: 'assets/plany.png',
          details: Zainteresowania()),
    ];

    _rozdzialy.forEach((BudowaRozdzoalu rozdzial) {
      _rozdzialTiles.add(_buildTile(rozdzial));
    });
  }

  Widget _buildTile(BudowaRozdzoalu rozdzial) {
    return Card(
      borderOnForeground: false,
      elevation: 5,
      color: Colors.deepOrange,
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(rozdzial: rozdzial)));
        },
        contentPadding: EdgeInsets.all(10),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(rozdzial.title,
                style: GoogleFonts.lato(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.white)),
          ],
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            height: 80,
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
