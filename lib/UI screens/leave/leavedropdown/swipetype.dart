
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class DropDownSwipe extends StatefulWidget {
  const DropDownSwipe({Key? key}) : super(key: key);

  @override
  _DropDownSwipeState createState() => _DropDownSwipeState();
}

class _DropDownSwipeState extends State<DropDownSwipe> {
  String? _chosenSwipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: const EdgeInsets.all(0.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, color: borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,

          child: DropdownButton<String>(
            borderRadius: BorderRadius.circular(10),
            value: _chosenSwipe,
            underline: SizedBox(),
            isExpanded: true,
            style:
            font15.copyWith(color: Colors.black.withOpacity(0.7)),
            items: <String>[
                MyStrings.swipe,
                MyStrings.od,

            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SmallText(text: value),
              );
            }).toList(),
            hint: SmallText(
              text: MyStrings.selectType,
              color: drawerTextColor,
              size: 16,
              fontWeight: FontWeight.w400,
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenSwipe = value;
              });
            },
          ),
        ),
      ),
    );
  }

}