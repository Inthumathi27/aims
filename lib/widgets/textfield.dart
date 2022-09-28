import 'package:aims/utils/constant.dart';
import 'package:flutter/material.dart';

class InputTextfield extends StatelessWidget {

  final String text;
  final Icon icon;
  const InputTextfield({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: primaryColor,
      decoration: InputDecoration(
          filled: true,
          hoverColor: primaryColor,
          focusColor: primaryColor,

          fillColor: TextFieldBgColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: text,
          suffixIcon:icon
      ),
    );
  }
}
