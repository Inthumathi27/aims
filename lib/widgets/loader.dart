import 'package:flutter/material.dart';

class LoadingDialog {
  static showLoaderDialog(BuildContext context, String popUpMsg) {
    showDialog(

      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return   Container(
          width: 25,
          height: 25,
          child: Image(
            image: AssetImage('assets/loader.gif',),width: 10,height: 10,
          ),
        );
      },
    );
  }
}