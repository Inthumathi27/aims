import 'package:aims/utils/constant.dart';
import 'package:flutter/material.dart';

class InputTextfield extends StatelessWidget {

  final String text;
  final Icon? icon;
  final TextEditingController? controller;
  final Color? fillColor;
  

  const InputTextfield({Key? key, required this.text,  this.icon,this.controller,this.fillColor=Colors.transparent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: primaryColor,
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          hoverColor: primaryColor,
          focusColor: primaryColor,
          fillColor: fillColor,
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
