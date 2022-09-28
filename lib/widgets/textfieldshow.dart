import 'package:aims/utils/constant.dart';
import 'package:flutter/material.dart';

class OutputTextfield extends StatelessWidget {

  final String text;

  const OutputTextfield({Key? key, required this.text, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: primaryColor,
      decoration: InputDecoration(
          filled: true,
          hoverColor: primaryColor,
          focusColor: primaryColor,
          contentPadding: EdgeInsets.symmetric(vertical: 05,horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

            borderSide: const BorderSide(
                width: 3, color: Colors.greenAccent),
          ),
          hintText: text,
      ),
    );
  }
}
