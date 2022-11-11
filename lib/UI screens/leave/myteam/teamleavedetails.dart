import 'package:aims/UI%20screens/leave/leaveapplication.dart';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'teamprojectdetails.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SmallText(
          text: MyStrings.myTeam,
        ),
      ),
      body: ListView(
        children: [
          DataTable(
            //border: TableBorder.all(width: 0.3, color:prescriptionDivideColor),
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Color(0xffd6edee)),
            headingRowHeight: 40,
            showBottomBorder: true,

            // dataRowHeight: 50,
            columns: [
              DataColumn(
                  label: SmallText(
                text: "Project",
                color: blueGreyColor,
                size: 14,
                textAlign: TextAlign.center,
              )),
              DataColumn(
                  label: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SmallText(
                  text: "Members",
                  color: blueGreyColor,
                  size: 14,
                  textAlign: TextAlign.center,
                ),
              )),
              DataColumn(
                  label: SmallText(
                text: "Request",
                color: blueGreyColor,
                size: 14,
                textAlign: TextAlign.center,
              )),
            ],
            rows: [
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "AIMS",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                    Center(
                        child: SmallText(
                      text: '05',
                      size: 14,
                      color: drawerTextColor,
                    )),
                  ),
                  DataCell(
                      Center(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SmallText(
                            text: '02',
                            size: 14,
                            color: whiteColor,
                          ),
                        ),
                      )), onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const TeamProjectDetails(
                              projectname: "AIMS",
                            )));
                  }),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "247 Pharma",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(Center(
                      child: SmallText(
                    text: '03',
                    size: 14,
                    color: drawerTextColor,
                  ))),
                  DataCell(Center(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SmallText(
                        text: '00',
                        size: 14,
                        color: whiteColor,
                      ),
                    ),
                  )),
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const TeamProjectDetails(
                                  projectname: "247 Pharma",
                                )));
                      }
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "AR Tool",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                      Center(
                      child: SmallText(
                        text: '08',
                        size: 14,
                        color: drawerTextColor,
                      ))),
                  DataCell(
                      Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SmallText(
                          text: '01',
                          size: 14,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                      onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const TeamProjectDetails(
                              projectname: "AR Tool",
                            )));
                  }
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
