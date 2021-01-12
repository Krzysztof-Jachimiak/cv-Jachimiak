import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Choice> choices = const <Choice>[
      const Choice(
          title: 'DOM',
          date: '1 June 2019',
          description: 'opis 1',
          imglink: 'assets/dom.png'),
      const Choice(
          title: 'KITKU',
          date: '1 June 2016',
          description: 'opis 2',
          imglink: 'assets/serce.png'),
      const Choice(
          title: 'SITS',
          date: '1 June 2019',
          description: 'opis 3 ',
          imglink: 'assets/praca.png'),
      const Choice(
          title: 'RACHUNKI',
          date: '1 June 2017',
          description: 'opis 4 ',
          imglink: 'assets/wydatki.png'),
      const Choice(
          title: 'ZAKUPY',
          date: '1 June 2018',
          description: 'opis 5 ',
          imglink: 'assets/zakupy.png'),
    ];

    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: ListView(children: [
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/daria.jpg',
                    fit: BoxFit.cover,
                  )),
              Container(
                height: 300.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: ChoiceCard(
                            choice: choices[index], item: choices[index]),
                      );
                    })),
              ),
              // Container(
              //   height: 300.0,
              //   child: ListView(
              //       scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       padding: const EdgeInsets.all(20.0),
              //       children: List.generate(choices.length, (index) {
              //         return Center(
              //           child: ChoiceCard(
              //               choice: choices[index], item: choices[index]),
              //         );
              //       })),
              // ),
            ])));
  }
}

class Choice {
  final String title;
  final String date;
  final String description;
  final String imglink;

  const Choice({this.title, this.date, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            new Expanded(
                child: Container(
              width: 180.0,
              height: 260.0,
              child: Image.asset(choice.imglink),
            )),
            new Container(
              width: 180,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title,
                      style: Theme.of(context).textTheme.headline5),
                  Text(choice.date,
                      style: TextStyle(color: Colors.black.withOpacity(0.5))),
                  Text(choice.description),
                ],
              ),
            )
          ],
        ));
  }
}
