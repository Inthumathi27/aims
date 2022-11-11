import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Leavedata {
  String? month;
  String? date;
  String? reason;
  String? leaveType;
  String? status;

  Leavedata({
    this.month,
    this.date,
    this.reason,
    this.leaveType,
    this.status,
  });
}

class LeaveHistory extends StatefulWidget {
  const LeaveHistory({Key? key}) : super(key: key);

  @override
  State<LeaveHistory> createState() => _LeaveHistoryState();
}

class _LeaveHistoryState extends State<LeaveHistory> {
  List leaveHistory = [
    Leavedata(
        month: "September",
        date: "28",
        reason: "Moving to native",
        leaveType: "CL",
        status: "Pending"),
    Leavedata(
        month: "November",
        date: "2-5",
        reason: "Not Felling Well",
        leaveType: "SL",
        status: "Approved"),
    Leavedata(
        month: "December",
        date: "15",
        reason: "I am going out",
        leaveType: "PM",
        status: "Approved"),
    Leavedata(
        month: "December",
        date: "25-27",
        reason: "I am going to trip to Goa with my family and friends",
        leaveType: "CL",
        status: "Rejected"),
    Leavedata(
        month: "December",
        date: "25-27",
        reason: "I am working in villupuram branch",
        leaveType: "OD",
        status: "Pending"),
    Leavedata(
        month: "October",
        date: "12",
        reason: "Comp off used",
        leaveType: "Com Off",
        status: "Approved"),
  ];

  String state = 'Animation start';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SmallText(
          text: MyStrings.leaveHistory,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 28.0,
                            lineWidth: 3.5,
                            animation: true,
                            percent: .6,
                            animationDuration: 1500,
                            animateFromLastPercent: true,
                            center: Image.asset(
                              'assets/leavemanagment/casualleave.png',
                              width: 20,
                              height: 20,
                            ),
                            // footer: Text(
                            //   state,
                            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                            // ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: casualLeaveBorder,
                            onAnimationEnd: () => setState(() => state = ''),
                          ),
                          widthspace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SmallText(
                                text: "18 days",
                                size: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              SmallText(
                                text: "Casual Leave",
                                size: 15,
                                color: containerTextGreyColor.withOpacity(0.7),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 28.0,
                            lineWidth: 3.5,
                            animation: true,
                            percent: .7,
                            animationDuration: 1500,
                            animateFromLastPercent: true,
                            center: Image.asset(
                              'assets/leavemanagment/sickleave.png',
                              width: 20,
                              height: 20,
                            ),
                            // footer: Text(
                            //   state,
                            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                            // ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: sickLeaveBorder,
                            onAnimationEnd: () => setState(() => state = ''),
                          ),
                          widthspace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SmallText(
                                text: "8 days",
                                size: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              SmallText(
                                text: "Sick Leave",
                                size: 15,
                                color: containerTextGreyColor.withOpacity(0.7),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              heightspace,
              heightspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(
                    text: "Leave Requests".toUpperCase(),
                    size: 13,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.3,
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
              SizedBox(
                height: 5,
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: leaveHistory.length,
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
                                    Row(
                                      children: [
                                        SmallText(
                                          text:
                                              '${leaveHistory[index].date} ${leaveHistory[index].month[0]}${leaveHistory[index].month[1]}${leaveHistory[index].month[2]} ',
                                          size: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        widthspace,
                                        Container(

                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: leaveHistory[index]
                                                .leaveType ==
                                                "PM"
                                                ? Color(0xffe1fff3):leaveHistory[index]
                                                .leaveType ==
                                                "SL"
                                                ? const Color(0xffffeaf6)
                                                : leaveHistory[index]
                                                .leaveType ==
                                                "OD"
                                                ? const Color(0xfffff9e8)
                                                :leaveHistory[index]
                                                .leaveType ==
                                                "Com Off"
                                                ? const Color (0xfffff5f1)
                                                :Color(0xffdffaff)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: SmallText(
                                              text: leaveHistory[index].leaveType,
                                              color: leaveHistory[index]
                                                          .leaveType ==
                                                      "OD"
                                                  ? const Color(0xffd39c06)
                                                  : leaveHistory[index].leaveType ==
                                                          "CL"
                                                      ? const Color(0xff33b5ce)
                                                      : leaveHistory[index]
                                                                  .leaveType ==
                                                              "SL"
                                                          ? const Color(0xffc988ad)
                                                          : leaveHistory[index]
                                                                  .leaveType ==
                                                              "PM"
                                                          ? const Color(0xff3cc68f)
                                                          :leaveHistory[index]
                                                                  .leaveType ==
                                                              "Com Off"
                                                          ? const Color (0xffff8659)
                                                          : blueGreyColor,
                                              fontStyle: FontStyle.italic,
                                              size: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                      child: Icon(
                                        Icons.more_horiz,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.6,
                                      child: SmallText(
                                        text: leaveHistory[index].reason,
                                        size: 13,
                                        color: drawerTextColor,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          4.6,
                                      // decoration: BoxDecoration(
                                      //     borderRadius:
                                      //         BorderRadius.circular(5),
                                      //     color: leaveHistory[index].status ==
                                      //             "Approved"
                                      //         ? const Color(0xffdff8ee)
                                      //         : leaveHistory[index].status ==
                                      //                 "Rejected"
                                      //             ? const Color(0xfffcdfe1)
                                      //             : const Color(0xfffff5e6)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                'assets/leavemanagment/timer.png',
                                                width: 12,
                                                height: 12,
                                                color: leaveHistory[index]
                                                            .status ==
                                                        "Approved"
                                                    ? blueGreyColor
                                                // const Color(0xff569b5f)
                                                    : leaveHistory[index]
                                                                .status ==
                                                            "Rejected"
                                                        ? const Color(
                                                            0xffff3d49)
                                                        : const Color(
                                                            0xfffe9502)),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            SmallText(
                                              text: leaveHistory[index].status,
                                              textAlign: TextAlign.end,
                                              fontWeight: FontWeight.w500,
                                              color: leaveHistory[index]
                                                          .status ==
                                                      "Approved"
                                                  ?  blueGreyColor
                                              // const Color(0xff569b5f)
                                                  : leaveHistory[index]
                                                              .status ==
                                                          "Rejected"
                                                      ? const Color(0xffff3d49)
                                                      : const Color(0xfffe9502),
                                              size: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Filters',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  'Clear Filter',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              children: [
                filterContainer('2022'),
                filterContainer('2021'),
                filterContainer('2020'),
                filterContainer('2019'),
                filterContainer('2018'),
                filterContainer('Older'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade400))),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400)),
                  child: const Center(
                    child: Text(
                      'Cancel',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(color: primaryColor),
                  child: const Center(
                    child: Text(
                      'Apply',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget filterContainer(text) {
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      child: Text(text),
    );
  }
}
