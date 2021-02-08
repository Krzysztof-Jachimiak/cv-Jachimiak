import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slimy_card/slimy_card.dart';

class Why extends StatelessWidget {
  const Why({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.blueGrey[300],
          child: ListView(
            children: [
              SlimyCard(
                color: Colors.deepOrange,
                width: 350,
                topCardHeight: 420,
                bottomCardHeight: 250,
                borderRadius: 15,
                topCardWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '''      Dlaczego warto kupić mój czas? Jeśli się nad tym zastanawiasz to już świadczy o twojej odwadze. :)
      W moim wieku ludzie nie rzucają wszystkiego i nie pędzą na złamanie karku w przepaść, licząc na to że otworzy się spadochron.
      Ja jednak to zrobiłem, bo czułem podskórnie, że to jest to, w czym będę się spełniał, Jak programuje nie czuje że pracuje, sprawia mi to wielką satysfakcje, poza tym uwielbiam się uczyć i tworzyć coś nowego. Nie sądziłem, że będzie to aż tak trudne i wiem, że jeszcze nic nie wiem, ale wiem, że będę bardzo wdzięczny i z całej siły będę się starał to pokazać moją pracą

                 Co mogę zagwarantować?''',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.lato(fontSize: 17),
                    ),
                  ],
                ),
                bottomCardWidget: Text(
                  '''
                  
• Nie będę negocjował warunków pierwszego kontraktu (mam JDG) ,wiem że to nie czas by wymagać
• Będę rzetelnie wypełniał wszelkie death-line
• Nauczę się wszystkiego, czego jeszcze nie umiem w krótszym czasie, niż zostanie mi wyznaczony
• Będę z pokorą przyjmował wszystkie uwagi.''',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(fontSize: 17),
                ),
              ),
            ],
          )),
    );
  }
}
