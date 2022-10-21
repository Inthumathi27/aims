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


  Leavedata(
      {this.month,
      this.date,
      this.reason,
      this.leaveType,
      this.status,
 });
}

class leaveHistory extends StatefulWidget {
  const leaveHistory({Key? key}) : super(key: key);

  @override
  State<leaveHistory> createState() => _leaveHistoryState();
}

class _leaveHistoryState extends State<leaveHistory> {
  List leaveHistory = [
    Leavedata(
      month: "September",
      date: "28",
      reason: "Moving to native",
      leaveType: "Casual Leave",
      status: "Pending"
    ),
    Leavedata(
      month: "November",
      date: "2-5",
      reason: "Not Felling Well",
      leaveType: "Sick Leave",
      status: "Approved"
    ),
    Leavedata(
        month: "December",
        date: "25-27",
        reason: "I am going to trip to Goa with my family and friends",
        leaveType: "Casual Leave",
      status: "Canceled"
    )
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
      body: Padding(
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
                            SizedBox(
                              height: 3,
                            ),
                            SmallText(
                              text: "Casual Leave",
                              size: 15,
                              color: containertextGreyColor.withOpacity(0.7),
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
                            SizedBox(
                              height: 3,
                            ),
                            SmallText(
                              text: "Sick Leave",
                              size: 15,
                              color: containertextGreyColor.withOpacity(0.7),
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
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: leaveHistory.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: leaveHistory[index].leaveType ==
                                              "Casual Leave"
                                          ? Color(0xfff7b500)
                                          : Color(0xff3dd598),
                                      width: 1)),
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: leaveHistory[index].leaveType ==
                                          "Casual Leave"
                                          ? Color(0xffffe59f): leaveHistory[index].leaveType ==
                                          "Sick Leave"
                                          ? Color(0xff9ceacb):Colors.red,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                        child: SmallText(
                                      text: leaveHistory[index].month,
                                      fontWeight: FontWeight.w600,
                                      size: 13,
                                    )),
                                  ),
                                  Container(
                                    height: 1,
                                    width: 90,
                                    color: leaveHistory[index].leaveType ==
                                        "Casual Leave"
                                        ? Color(0xfff7b500)
                                        : Color(0xff3dd598),
                                  ),
                                  Container(
                                    height: 52,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: leaveHistory[index].leaveType ==
                                          "Casual Leave"
                                          ?Color(0xfffff0c6): leaveHistory[index].leaveType ==
                                          "Sick Leave"
                                          ? Color(0xffdafff0):Colors.red,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                        child: SmallText(
                                      text: leaveHistory[index].date,
                                      size: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                                  )
                                ],
                              ),
                            ),
                            widthspace,
                            SizedBox(
                              width: MediaQuery.of(context).size.width/1.6,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width / 2,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SmallText(
                                              text: leaveHistory[index].reason,size: 13,
                                            ),

                                          ],
                                        ),
                                      ),
                                      widthspace,
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 30.0),
                                        child: Icon(Icons.more_vert,size: 20,),
                                      ),
                                    ],
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SmallText(text: leaveHistory[index].leaveType,color: bluegreyColor,size: 15,),
                                      Row(
                                        children: [
                                          SmallText(text: leaveHistory[index].status,textAlign: TextAlign.end,),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
