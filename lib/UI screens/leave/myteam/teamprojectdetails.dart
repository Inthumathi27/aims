import 'package:aims/utils/constant.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class Leavedata {
  String? name;
  String? ob;
  String? avail;
  String? available;

  Leavedata({this.name, this.avail, this.available, this.ob});
}

class TeamProjectDetails extends StatefulWidget {
  final projectname;

  const TeamProjectDetails({Key? key, required this.projectname})
      : super(key: key);

  @override
  State<TeamProjectDetails> createState() => _TeamProjectDetailsState();
}

class _TeamProjectDetailsState extends State<TeamProjectDetails> {
  List leaveHistory = [
    Leavedata(
      name: "John",
      available: "1",
      avail: "2",
      ob: "3",
    ),
    Leavedata(
      name: "Amala",
      available: "3",
      avail: "2",
      ob: "5",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: SmallText(
            text: widget.projectname,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              heightspace,
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: SmallText(
                          text: "Name",
                          size: 15,
                          color: blueGreyColor,
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: SmallText(
                          text: "OB+",
                          size: 15,
                          color: blueGreyColor,
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: SmallText(
                          text: "Avail",
                          size: 15,
                          color: blueGreyColor,
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: SmallText(
                          text: "Bal",
                          size: 15,
                          color: blueGreyColor,
                        )),
                  ],
                ),
              ),
              // heightspace,
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: leaveHistory.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: whiteColor,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  child: SmallText(
                                    text: leaveHistory[index].name,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 8,
                                  child: SmallText(
                                    text: leaveHistory[index].available,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 8,
                                  child: SmallText(
                                    text: leaveHistory[index].avail,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 8,
                                  child: SmallText(
                                    text: leaveHistory[index].ob,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: Center(
                                            child: SmallText(
                                          text: "Are you sure, you want reject",
                                          size: 15,
                                        )),
                                        content: Container(
                                          height: 155,
                                          child: Column(
                                            children: [
                                              TextField(
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  border:
                                                      const OutlineInputBorder(),
                                                  hintText: "Reason",
                                                  hintStyle:
                                                      TextStyle(fontSize: 14),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 1,
                                                        color: borderColor),
                                                  ),
                                                ),
                                              ),
                                              heightspace,
                                              heightspace,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () =>
                                                        Navigator.pop(context),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: textGreyColor,
                                                      ),
                                                      width: 100,
                                                      height: 30,
                                                      child: Center(
                                                          child: SmallText(
                                                        text: "Cancel",
                                                        color: whiteColor,
                                                      )),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    // onTap:()=>Navigator.pop(context),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: primaryColor,
                                                      ),
                                                      width: 100,
                                                      height: 30,
                                                      child: Center(
                                                          child: SmallText(
                                                        text: "Rejected",
                                                        color: whiteColor,
                                                      )),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/profile/bubblechat.png',
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // showDialog<String>(
                                        //   context: context,
                                        //   builder: (BuildContext context) => AlertDialog(
                                        //     title: SmallText(text: "Are you sure, you want reject",size: 15,),
                                        //     content:Container(
                                        //       height: 120,
                                        //       child: Column(
                                        //         children: [
                                        //           Container(
                                        //             width: MediaQuery.of(context).size.width,
                                        //             child: TextField(
                                        //               decoration: InputDecoration(
                                        //                 border: const OutlineInputBorder(),
                                        //                 hintText: "Reason",
                                        //                 hintStyle: TextStyle(fontSize: 12),
                                        //                 focusedBorder: OutlineInputBorder(
                                        //                   borderSide: BorderSide(
                                        //                       width: 1, color: borderColor),
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           heightspace,
                                        //           heightspace,
                                        //           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        //             children: [
                                        //               InkWell(
                                        //                 onTap:()=>Navigator.pop(context),
                                        //                 child: Container(
                                        //                   decoration: BoxDecoration(
                                        //                     borderRadius: BorderRadius.circular(5),
                                        //                     color: textGreyColor,
                                        //                   ),
                                        //                   width: 100,
                                        //                   height: 30,
                                        //                   child: Center(child: SmallText(text: "No",color: whiteColor,)),
                                        //                 ),
                                        //               ),
                                        //               InkWell(
                                        //                 // onTap:()=>Navigator.pop(context),
                                        //                 child: Container(
                                        //                   decoration: BoxDecoration(
                                        //                     borderRadius: BorderRadius.circular(5),
                                        //                     color: primaryColor,
                                        //                   ),
                                        //                   width: 100,
                                        //                   height: 30,
                                        //                   child: Center(child: SmallText(text: "Yes",color: whiteColor,)),
                                        //                 ),
                                        //               ),
                                        //             ],
                                        //           ),
                                        //         ],
                                        //       ),
                                        //     ),
                                        //   ),
                                        // );
                                        showDialog(
                                          context: context,
                                          barrierDismissible: false, // user must tap button for close dialog!
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: SmallText( text: 'Are you Sure, You want to decline this leave?',size: 15,),
                                              contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                             actionsPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              content:  const TextField(
                                                maxLines: 2,
                                                keyboardType: TextInputType.multiline,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  contentPadding: EdgeInsets.fromLTRB(10,5,10,5),
                                                  labelText: 'Reason',
                                                ),
                                              ),
                                              actions: [
                                                FlatButton(
                                                  child: const Text('CANCEL'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                FlatButton(
                                                  child: const Text('ACCEPT'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                )
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: 85,
                                        height: 30,
                                        color: Colors.red.withOpacity(0.7),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.close,
                                              color: whiteColor,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SmallText(
                                              text: "Decline",
                                              size: 13,
                                              color: whiteColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    widthspace,
                                    widthspace,
                                    Container(
                                      width: 85,
                                      height: 30,
                                      color: primaryColor.withOpacity(0.7),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.check,
                                            color: whiteColor,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SmallText(
                                            text: "Approve",
                                            size: 13,
                                            color: whiteColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )

        // ListView(
        //   children: [
        //     DataTable(
        //       //border: TableBorder.all(width: 0.3, color:prescriptionDivideColor),
        //       headingRowColor:
        //       MaterialStateColor.resolveWith((states) => Color(0xffd6edee)),
        //       // headingRowHeight: 50,
        //       showBottomBorder: true,
        //       headingRowHeight: 40,
        //       // dataRowHeight: 50,
        //       columns: [
        //         DataColumn(
        //             label: SmallText(
        //               text: "Employee",
        //               color: blueGreyColor,
        //               size: 14,
        //               textAlign: TextAlign.center,
        //             )),
        //         DataColumn(
        //             label: SmallText(
        //               text: "Avail",
        //               color: blueGreyColor,
        //               size: 14,
        //               textAlign: TextAlign.center,
        //             )),
        //         DataColumn(
        //             label: SmallText(
        //               text: "    Available",
        //               color: blueGreyColor,
        //               size: 14,
        //               textAlign: TextAlign.center,
        //             )),
        //       ],
        //       rows: [
        //         DataRow(
        //           cells: <DataCell>[
        //             DataCell(
        //
        //               SmallText(
        //                 text: "John",
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //               onTap: (){
        //                 Navigator.push(
        //                     context,
        //                     PageTransition(
        //                         type: PageTransitionType.rightToLeft,
        //                         child: const EmployeeLeaveDetails()));
        //               }
        //             ),
        //             DataCell(
        //                 Padding(
        //                   padding: const EdgeInsets.only(left: 5.0),
        //                   child: SmallText(
        //                     text: '05',
        //                     size: 15,
        //                     color: drawerTextColor,
        //                   ),
        //                 ),
        //             ),
        //             DataCell(Center(
        //               child: SmallText(
        //                 text: '02',
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //             )),
        //           ],
        //         ),
        //         DataRow(
        //           cells: <DataCell>[
        //             DataCell(
        //               SmallText(
        //                 text: "Amala",
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //             ),
        //             DataCell(Padding(
        //               padding: const EdgeInsets.only(left: 5.0),
        //               child: SmallText(
        //                 text: '03',
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //             )),
        //             DataCell(Center(
        //               child: SmallText(
        //                 text: '00',
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //             )),
        //           ],
        //         ),
        //         DataRow(
        //           cells: <DataCell>[
        //             DataCell(
        //               SmallText(
        //                 text: "Annila",
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //             ),
        //             DataCell(
        //                 Padding(
        //                   padding: const EdgeInsets.only(left: 5.0),
        //                   child: SmallText(
        //               text: '08',
        //               size: 14,
        //               color: drawerTextColor,
        //             ),
        //                 )),
        //             DataCell(Center(
        //               child: SmallText(
        //                 text: '01',
        //                 size: 14,
        //                 color: drawerTextColor,
        //               ),
        //             )),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        );
  }


}
