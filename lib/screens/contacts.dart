import 'dart:ui';

import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:animation_routes_riverpod_divizion/share/adress_data.dart';
import 'package:animation_routes_riverpod_divizion/share/logo_with_shadow.dart';
import 'package:animation_routes_riverpod_divizion/services/services.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:animation_routes_riverpod_divizion/share/vertical_kj.dart';

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
  final _string = StringCEduController.the;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: _string.tel.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          child: Container(
            height: MediaQuery.of(context).size.width * 1.7,
            color: Colors.blueGrey[300],
            child: Stack(
              children: [
                Logo(
                  colorBlendMode: BlendMode.srcIn,
                  color: Colors.grey[800],
                  width: MediaQuery.of(context).size.width,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 5, sigmaY: 3, tileMode: TileMode.clamp),
                  child: Stack(
                    children: [
                      VerticalKJ(),
                      Padding(
                        padding: const EdgeInsets.only(top: 264),
                        child: AdresData(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(88, 320, 88, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              controller: _controller,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
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
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10)),
                              child: MaterialButton(
                                onPressed: () =>
                                    _callService.call(_controller.text),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Text('Zatwierdź', style: styleHeadWhite),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Logo(
                        colorBlendMode: BlendMode.clear,
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
