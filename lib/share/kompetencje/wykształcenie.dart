import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Wyksztalcenie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text:
                '''Szkoła to nie wszystko, wiedzę można zdobyć w bardziej efektywny sposób. Lubie się uczyć.
              
              
              ''',
            style: stylenagluwek,
            children: [
              TextSpan(
                text: '''Wyższa Szkoła Ekonomiczno Informatyczna w Warszawie
              ''',
                style: stylenagluwek,
              ),
              TextSpan(
                text: '''

  • Finanse i Ekonomia podstawy programowania ale to było bardzo dawno
  
   ''',
                style: styleproza,
              ),
              TextSpan(
                text: '''
 
IV Liceum Ogulnokształcące w Bielsku Podlaskim
              ''',
                style: stylenagluwek,
              ),
            ]));
  }
}
