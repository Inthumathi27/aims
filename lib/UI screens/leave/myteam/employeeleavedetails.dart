import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class EmployeeLeaveDetails extends StatefulWidget {
  const EmployeeLeaveDetails({Key? key}) : super(key: key);

  @override
  State<EmployeeLeaveDetails> createState() => _EmployeeLeaveDetailsState();
}

class _EmployeeLeaveDetailsState extends State<EmployeeLeaveDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SmallText(
          text: "Leave History",
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12,20,12,20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: primaryColor,
                  minRadius: 24.0,
                  child: const CircleAvatar(
                    backgroundColor: Color(0xfffafafa),
                    minRadius: 22.0,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/dummyimage/image1.png',
                      ),
                    ),
                  ),),
                widthspace,
                Container(
                  width: MediaQuery.of(context).size.width/1.35,
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallText(text: "Farheen Faiza Noor",size: 15,fontWeight: FontWeight.w500,),
                          SmallText(text: "AM045",size: 15),
                        ],
                      ),

                      SizedBox(height: 5,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallText(text: "Developer",size: 14,color: drawerTextColor,fontStyle: FontStyle.italic,),
                          SmallText(text: "Software Engineer",size: 14,color: drawerTextColor,fontStyle: FontStyle.italic,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: drawerTextColor.withOpacity(0.3),
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
          DataTable(
            //border: TableBorder.all(width: 0.3, color:prescriptionDivideColor),
            headingRowColor:
            MaterialStateColor.resolveWith((states) => Color(0xffd6edee)),
            // headingRowHeight: 50,
            showBottomBorder: true,

            // dataRowHeight: 50,
            columns: [
              DataColumn(
                  label: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SmallText(
                      text: "Date",
                      color: blueGreyColor,
                      size: 14,
                      textAlign: TextAlign.center,
                    ),
                  )),
              DataColumn(
                  label: SmallText(
                    text: "Type",
                    color: blueGreyColor,
                    size: 14,
                    textAlign: TextAlign.center,
                  )),
              DataColumn(
                  label: SmallText(
                    text: "      Status",
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
                      text: "11.11.22",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SmallText(
                        text: 'SL',
                        size: 15,
                        color: drawerTextColor,
                      ),
                    ),
                  ),
                  DataCell(Center(
                    child: SmallText(
                      text: 'Approved',
                      size: 14,
                      color: drawerTextColor,
                    ),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "27.08.22",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SmallText(
                        text: 'CL',
                        size: 15,
                        color: drawerTextColor,
                      ),
                    ),
                  ),
                  DataCell(Center(
                    child: SmallText(
                      text: 'Rejected',
                      size: 14,
                      color: drawerTextColor,
                    ),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "05.05.22",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SmallText(
                        text: 'SL',
                        size: 15,
                        color: drawerTextColor,
                      ),
                    ),
                  ),
                  DataCell(Center(
                    child: SmallText(
                      text: 'Approved',
                      size: 14,
                      color: drawerTextColor,
                    ),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "08.01.22",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SmallText(
                        text: 'PM',
                        size: 15,
                        color: drawerTextColor,
                      ),
                    ),
                  ),
                  DataCell(Center(
                    child: SmallText(
                      text: 'Approved',
                      size: 14,
                      color: drawerTextColor,
                    ),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    SmallText(
                      text: "07.01.22",
                      size: 14,
                      color: drawerTextColor,
                    ),
                  ),
                  DataCell(
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SmallText(
                        text: 'CL',
                        size: 15,
                        color: drawerTextColor,
                      ),
                    ),
                  ),
                  DataCell(Center(
                    child: SmallText(
                      text: 'Rejected',
                      size: 14,
                      color: drawerTextColor,
                    ),
                  )),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
