import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  double? size;
  TextOverflow? overflow;
  FontWeight? fontWeight;
  int? maxline;
  FontStyle? fontStyle;
  TextAlign? textAlign;

   SmallText({Key? key, required this.text, this.color,this.size=16,this.fontWeight,this.maxline,this.overflow,this.fontStyle,this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,overflow: overflow,
      maxLines: maxline,
      textAlign: textAlign,
      style: TextStyle( color:color,fontSize: size,fontWeight: fontWeight,fontStyle:fontStyle,),
    );
  }
}
