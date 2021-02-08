import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
          text: '''JDG S.L. Krzysztof Jachimiak, - Właściciel 
Kwi 2020 – obecnie
              ''',
          style: styleheading,
          children: [
            TextSpan(
              text: '''

  • W trakcie intensywnej nauki ''',
              style: styleprose,
            ),
            WidgetSpan(
                child: Image.asset(
                  'assets/flutter.png',
                  filterQuality: FilterQuality.high,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.blueGrey[100],
                  height: 60,
                ),
                alignment: PlaceholderAlignment.middle),
            TextSpan(
              text: '''

JDG S.L. Krzysztof Jachimiak,  - Właściciel 
Sty 2016 – Kwi 2020
              ''',
              style: styleheading,
            ),
            TextSpan(text: '''

  • Kancelaria finansowa współpracująca z 
    wieloma bankami
  • Negocjacje warunków z bankami.
  • Obsługująca małe i średnie przedsiębiorstwa.
  • Specjalizująca się w pozyskiwaniu środków. 
    finansowych - iwestycyjnych i obrotowych.
  • Analiza dokumentów finansowych firmy,
    badanie zdolności kredytowych, analiza pod 
    kątem scoringowym firmy oraz właścicieli.
    ''', style: styleprose),
            TextSpan(text: '''

Tax Care S.A. – Dyrektor Oddziału 
Sty 2014 – Sty 2016
''', style: styleheading),
            TextSpan(text: '''

  •Koordynowanie pracy oddziału.
  •Dbanie o realizacje planów sprzedażowych.
  •Kompleksowe zarządzanie oddziałem.
  
  ''', style: styleprose),
            TextSpan(
              text: '''

Tax Care S.A. - Starszy Doradca Biznesowy
Wrz 2012 – Sty 2014''',
              style: styleheading,
            ),
            TextSpan(text: '''


• Pozyskiwanie klientów do portfela biura
  rachunkowego.
• Pozyskiwanie finansowania dla mikro 
  przedsiębiorców.
• Budowanie dobrego wizerunku firmy.
• Optymalizacja podatkowa
  ''', style: styleprose),
            TextSpan(text: '''

Polkomtel S.A. - Starszy Specjalista 
Sty 2003 – Sty 2011
''', style: styleheading),
            TextSpan(text: '''

Polkomtel S.A. - Starszy Specjalista 
Sty 1998 – Sty 2003''', style: styleheading),
          ]),
    );
  }
}
