import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text:
                '''Szkoła to nie wszystko, wiedzę można zdobyć w bardziej efektywny sposób. Lubie się uczyć.
              
         
        ''',
            style: styleheading,
            children: [
              TextSpan(
                text:
                    '''Wyższa Szkoła Ekonomiczno Informatyczna w Warszawie - Licencjat z ekonomi. 
              ''',
                style: styleheading,
              ),
              TextSpan(
                text: '''

  • Finanse i Ekonomia podstawy programowania ale to było bardzo dawno
  
   ''',
                style: styleprose,
              ),
              TextSpan(
                text: '''
 
       IV Liceum Ogulnokształcące w Bielsku Podlaskim
              ''',
                style: styleheading,
              ),
            ]));
  }
}
