import 'dart:ui';

import 'package:animation_routes_riverpod_divizion/share/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Contacts extends StatefulWidget {
  Contacts({Key key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final CallService _callService = locator<CallService>();

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: '693692696');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 700,
              color: Colors.blueGrey[300],
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      50,
                      150,
                      0,
                      0,
                    ),
                    child: Image.asset(
                      'assets/dartlogo.png',
                      filterQuality: FilterQuality.high,
                      colorBlendMode: BlendMode.srcATop,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 5, sigmaY: 3, tileMode: TileMode.clamp),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Colors.deepOrange),
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Krzysztof Jachimiak',
                                      style: TextStyle(color: Colors.white70),
                                      textScaleFactor: 2.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 250),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.home,
                                              color: Colors.red,
                                            ),
                                            Icon(
                                              Icons.phone,
                                              color: Colors.red,
                                            ),
                                            Icon(
                                              Icons.email,
                                              color: Colors.red,
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Toruń ul Targowa 26',
                                            style: TextStyle(
                                                color: Colors.white70),
                                            textScaleFactor: 1.4,
                                          ),
                                          Text(
                                            '693692696 ',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                wordSpacing: 2),
                                            textScaleFactor: 1.4,
                                          ),
                                          Text(
                                            'k.jachimiak.net@gmiail.com ',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                wordSpacing: 2),
                                            textScaleFactor: 1.4,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      width: 300,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(10),
                                          )),
                                      child: TextFormField(
                                        controller: _controller,
                                        decoration: InputDecoration(),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        onSaved: (String value) {
                                          if (value.length != 9)
                                            return 'numer musi mieć  9 znaków';
                                          else
                                            return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: MaterialButton(
                                      onPressed: () =>
                                          _callService.call(_controller.text),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Zatwierdź',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey[200],
                                              wordSpacing: 2),
                                          textScaleFactor: 1.4,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 100, 0, 0),
                    child: Image.asset(
                      'assets/dartlogo.png',
                      filterQuality: FilterQuality.high,
                      scale: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
