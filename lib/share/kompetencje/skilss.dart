import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Umiejetnosci extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
          text: '''Umiejętności powiązane z programowaniem
              ''',
          style: stylenagluwek,
          children: [
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
• Flutter/Dart 
• To co widać w tym CV to wszystko mój kod, 
    rozumiem każdą linijkę. Dodatkowo radzę 
    sobie z przetwarzaniem zapytań REST z 
    dowolneto API. Mam podstawy obsługi 
    Firebase oraz Bloc Cubit.Kompletnie 
    rozumiem wszystkie zasady działania 
    Routingu. Zaczynam ekscytować się 
    animacjami:). Najbardziej komfortowo 
    czujesię na forntendzie. Jestem kreatywny 
    i czuję od zawsze potrzebę tworzenia.
• Git i tym samym GitLab/GitHub.
• Adobe PhotoShop.
• Adobe Illustrator.
• SolidWorks (czasami się przydaje od grafiki 3d).
• Visual Studio.
• Android Stutio.



  ''',
              style: styleproza,
            ),
            TextSpan(
              text: '''

Umiejętności z poprzedniego życia:)
              ''',
              style: stylenagluwek,
            ),
            TextSpan(text: '''

• Udokumentowane doświadczenie w sprzedaży.
• Bardzo wysoka zdolność negocjacyjna. 
• Umiejętność skutecznej komunikacji.
• Analiza Finansowa.
• Tworzenie ofert.
• Umiejętność skutecznego finalizowania 
  transakcji ale wypadłem z obiegu :).
• Analiza trendów rynkowych.
• Sprzedaż bazująca na relacjach.
• Wysoki poziom zorganizowania.
• Analiza rynku.
• Pozyskiwanie nowych klientów.
• Planowanie strategiczne. 
• Myślenie analityczne.
• Obsługa potencjalnych klientów.
• Biegła znajomość pakietu Office hahaha :)
      ''', style: styleproza),
          ]),
    );
  }
}
