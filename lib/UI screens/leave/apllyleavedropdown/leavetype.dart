

import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class DropDownBox extends StatefulWidget {
  const DropDownBox({Key? key}) : super(key: key);

  @override
  _DropDownBoxState createState() => _DropDownBoxState();
}

class _DropDownBoxState extends State<DropDownBox> {
  String? _chosenValue;

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
            value: _chosenValue,
            underline: SizedBox(),
            isExpanded: true,
            style:
            font15.copyWith(color: Colors.black.withOpacity(0.7)),
            items: <String>[
              MyStrings.casualLeave,
              MyStrings.sickLeave,
              MyStrings.privilegeLeave,
              MyStrings.compensatory,
              MyStrings.marriageLeave,
              MyStrings.paternityLeave,
              MyStrings.medicalLeave,
              MyStrings.bereavementLeave
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SmallText(text: value),
              );
            }).toList(),
            hint: SmallText(
              text: MyStrings.leaveType,
              color: drawertextColor,
              size: 16,
              fontWeight: FontWeight.w400,
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }

}