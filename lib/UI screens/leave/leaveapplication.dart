import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/button.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LeaveApp {
  String? month;
  String? date;
  String? reason;
  String? leaveType;
  String? name;
  String? empId;
  String? designation;
  String? department;

  LeaveApp({
    this.month,
    this.date,
    this.reason,
    this.leaveType,
    this.name,
    this.empId,
    this.designation,
    this.department,
  });
}

class LeaveApplication extends StatefulWidget {
  const LeaveApplication({Key? key}) : super(key: key);

  @override
  State<LeaveApplication> createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
  List leaveApplicationHistory = [
    LeaveApp(
        month: "September",
        date: "28",
        reason: "Moving to native",
        leaveType: "CL",
        name: "John",
        empId: "0056",
        designation: "Admin",
        department: "IT",
    ),
    LeaveApp(
        month: "November",
        date: "2-5",
        reason: "Not Felling Well",
        leaveType: "SL",
        name: "James",
        empId: "0035",
        designation:"IT",
        department:"RB"
    ),
    LeaveApp(
        month: "December",
        date: "15",
        reason: "I am going out",
        leaveType: "PM",
        name: "William",
        empId: "0011",
        designation:"Software Engineer",
        department:"Software"
    ),
    LeaveApp(
        month: "November",
        date: "15, 16, 17 18",
        reason: "I am going to trip to Goa with my family and friends",
        leaveType: "CL",
        name: "Lucas",
        empId: "0087",
        designation:"Software Engineer",
        department:"Software"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SmallText(
          text: MyStrings.updatePendingApplication,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(
                    text: MyStrings.leaveApplication,
                    size: 15,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.4,
                            child: showBottomModal(),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.segment),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Filter')
                      ],
                    ),
                  ),
                ],
              ),
              heightspace,
              heightspace,
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: leaveApplicationHistory.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: borderColor.withOpacity(0.5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SmallText(
                                      text: leaveApplicationHistory[index].leaveType,
                                      color: leaveApplicationHistory[index]
                                          .leaveType ==
                                          "OD"
                                          ? const Color(0xffd39c06)
                                          : leaveApplicationHistory[index].leaveType ==
                                          "CL"
                                          ? const Color(0xff33b5ce)
                                          : leaveApplicationHistory[index]
                                          .leaveType ==
                                          "SL"
                                          ? const Color(0xffc988ad)
                                          : leaveApplicationHistory[index]
                                          .leaveType ==
                                          "PM"
                                          ? const Color(0xff3cc68f)
                                          :leaveApplicationHistory[index]
                                          .leaveType ==
                                          "Com Off"
                                          ? const Color (0xffff8659)
                                          : bluegreyColor,
                                      fontStyle: FontStyle.italic,
                                      size: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    // Image.asset(
                                    //     'assets/leavemanagment/timer.png',
                                    //     width: 20,
                                    //     height: 20,
                                    //     color:leaveApplicationHistory[index]
                                    //         .leaveType ==
                                    //         "OD"
                                    //         ? const Color(0xffd39c06)
                                    //         : leaveApplicationHistory[index].leaveType ==
                                    //         "CL"
                                    //         ? const Color(0xff33b5ce)
                                    //         : leaveApplicationHistory[index]
                                    //         .leaveType ==
                                    //         "SL"
                                    //         ? const Color(0xffc988ad)
                                    //         : leaveApplicationHistory[index]
                                    //         .leaveType ==
                                    //         "PM"
                                    //         ? const Color(0xff3cc68f)
                                    //         :leaveApplicationHistory[index]
                                    //         .leaveType ==
                                    //         "Com Off"
                                    //         ? const Color (0xffff8659)
                                    //         :bluegreyColor),
                                    SmallText(
                                      text:
                                      '${leaveApplicationHistory[index].date} ${leaveApplicationHistory[index].month[0]}${leaveApplicationHistory[index].month[1]}${leaveApplicationHistory[index].month[2]} ',
                                      size: 13,

                                    ),
                                  ],
                                ),
                                heightspace,
                                FDottedLine(
                                  color: borderColor.withOpacity(0.3),
                                  width: MediaQuery.of(context).size.width,
                                ),
                                heightspace,
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SmallText(
                                          text:leaveApplicationHistory[index].name,
                                          size: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        widthspace,
                                        SmallText(
                                          text:leaveApplicationHistory[index].empId,
                                          size: 12,
                                        ),
                                      ],
                                    ),
                                    SmallText(text: leaveApplicationHistory[index].designation,size: 14,color: bluegreyColor,)

                                  ],
                                ),
                                heightspace,

                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: SmallText(text: leaveApplicationHistory[index].reason,size: 13)),
                                    widthspace,

                                    SmallText(
                                      text:
                                      leaveApplicationHistory[index].department,
                                      size: 14,
                                    ),

                                    ],
                                ),
                                SizedBox(height: 5,),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration:  BoxDecoration(
                                          color: Colors.red,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(Icons.close,color: whiteColor,size: 20,)
                                        // SmallText(text: MyStrings.rejected,color: whiteColor,size: 14,),
                                      )),
                                  Container(
                                        decoration:  BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child:Icon(Icons.check,color: whiteColor,size: 20,)
                                        // SmallText(text: MyStrings.approved,color: whiteColor,size: 14),
                                      )
                                     ),

                                ],
                                    ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showBottomModal() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: SmallText(
              text: MyStrings.updateApplication,
              size: 17,
              fontWeight: FontWeight.w500,
            )),
            heightspace,
            heightspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallText(
                  text: MyStrings.module,
                  color: textGreyColor,
                  size: 14,
                ),
                const DropDown(),
              ],
            ),
            heightspace,
            heightspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallText(
                  text: MyStrings.approver,
                  color: textGreyColor,
                  size: 14,
                ),
                const ApplicationDropDown(),
              ],
            ),
            heightspace,
            heightspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallText(
                  text: MyStrings.employeeName,
                  color: textGreyColor,
                  size: 14,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.9,
                  height: 40,
                  child: TextFormField(
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      // control your hints text size
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: borderColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            heightspace,
            heightspace,
            heightspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: RaisedButton(
                    elevation: 0,
                    child: SmallText(
                      text: MyStrings.view,
                    ),
                    onPressed: () {},
                    color: primaryColor,
                    textColor: whiteColor,
                    padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                    splashColor: Colors.grey,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: RaisedButton(
                    elevation: 0,
                    child: SmallText(
                      text: MyStrings.cancel,
                    ),
                    onPressed: () {},
                    color: primaryColor,
                    textColor: whiteColor,
                    padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                    splashColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.9,
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
            style: font15.copyWith(color: Colors.black.withOpacity(0.7)),
            items: <String>[
              "Confirmation Request",
              "Leave Application",
              "Swipe Request"
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SmallText(
                  text: value,
                  size: 15,
                ),
              );
            }).toList(),
            hint: SmallText(
              text: "Select Module Type",
              color: drawertextColor,
              size: 15,
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

class ApplicationDropDown extends StatefulWidget {
  const ApplicationDropDown({Key? key}) : super(key: key);

  @override
  State<ApplicationDropDown> createState() => _ApplicationDropDownState();
}

class _ApplicationDropDownState extends State<ApplicationDropDown> {
  String? _chosenApprover;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.9,
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
            value: _chosenApprover,
            underline: SizedBox(),
            isExpanded: true,
            style: font15.copyWith(color: Colors.black.withOpacity(0.7)),
            items: <String>[
              "HR",
              "Sr.HR",
              "VP",
              "Sr.VP",
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SmallText(
                  text: value,
                  size: 15,
                ),
              );
            }).toList(),
            hint: SmallText(
              text: "Select Approver",
              color: drawertextColor,
              size: 15,
              fontWeight: FontWeight.w400,
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenApprover = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
