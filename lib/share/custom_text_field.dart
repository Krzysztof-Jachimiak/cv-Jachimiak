import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller = TextEditingController();

  final _string = StringCEduController.the;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: _string.tel.toString());
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onSaved: (String value) {
        if (value.length != 9)
          return 'requaired 9 hords';
        else
          return null;
      },
    );
  }
}
