import 'dart:ui';

import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:animation_routes_riverpod_divizion/share/adress_data.dart';
import 'package:animation_routes_riverpod_divizion/share/cust_buttom.dart';
import 'package:animation_routes_riverpod_divizion/share/logo_with_shadow.dart';
import 'package:animation_routes_riverpod_divizion/services/services.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:animation_routes_riverpod_divizion/share/vertical_kj.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Contacts extends StatefulWidget {
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
            height: MediaQuery.of(context).size.width * 1.5,
            color: AppColors.backgroundFadedColor,
            child: Stack(
              children: [
                Logo(
                  colorBlendMode: BlendMode.srcIn,
                  color: AppColors.cardColor,
                  width: MediaQuery.of(context).size.width,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 2, sigmaY: 2, tileMode: TileMode.clamp),
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
                              style: TextStyle(color: Colors.white),
                              cursorColor: AppColors.cardColor,
                              controller: _controller,
                              decoration: InputDecoration(
                                  fillColor: AppColors.cardColor,
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
                            CustButtom(
                              onPres: () => _callService.call(_controller.text),
                              text: 'Zatwierdź',
                              color: AppColors.accentColor,
                            ),
                          ],
                        ),
                      ),
                      Logo(
                        colorBlendMode: BlendMode.darken,
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
