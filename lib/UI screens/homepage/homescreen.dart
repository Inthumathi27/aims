import 'package:aims/UI%20screens/account/profile.dart';
import 'package:aims/UI%20screens/leave/applyleave.dart';
import 'package:aims/UI%20screens/leave/leavesummary.dart';
import 'package:aims/UI%20screens/loginScreen/loginpage.dart';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: whiteColor, // Change Custom Drawer Icon Color
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        // title: Image.asset(
        //   'assets/login/loginlogo.png',
        //   width: 150,
        //   height: 150,
        //   // height: 300,
        // ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(builder: (context) => LoginScreen()));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.logout),
            ),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width/1.6,
        child: Drawer(
          child: Container(
            color: Color(0xffddd3dc).withOpacity(0.2),
            child: ListView(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              children: [
                SizedBox(
                  height: 135.0,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: Divider.createBorderSide(context,
                            color: Colors.transparent),
                      ),
                    ),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                heightspace,
                heightspace,
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/profile.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.profile,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
                heightspace,
                heightspace,
                SmallText(
                  text: MyStrings.leavemanagment.toUpperCase(),
                  color: drawerHeadingColor.withOpacity(0.6),
                  size: 16,
                  fontWeight: FontWeight.w600,
                ),
                heightspace,
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/leavebalance.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.leaveBalance,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child:  LeaveSummary()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/applyleave.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.applyLeave,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const ApplyLeave()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/applyswipe.png',
                        width: 27,
                        height: 27,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.applySwipe,
                        color: drawertextColor,
                         size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/compo.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.compensatory,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/od.png',
                        width: 28,
                        height: 28,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.od,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/leavehistory.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.leaveHistory,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/leaverules.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.leaveRules,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/sidemenu/holidaylist.png',
                        width: 25,
                        height: 25,
                      ),
                      widthspace,
                      SmallText(
                        text: MyStrings.holidayList,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ProfilePage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: DoubleBackToCloseApp(
          snackBar: SnackBar(
            behavior: SnackBarBehavior.floating,
            width: width / 1.8,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
            content: const Text(
              'Please back again to exit',
              textAlign: TextAlign.center,
            ),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ProfilePage()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 100,
                      color: bluegreyColor,
                    ),
                    SmallText(
                      text: MyStrings.profile,
                      size: 18,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: LeaveSummary()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 100,
                      color: bluegreyColor,
                    ),
                    SmallText(
                      text: MyStrings.leave,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
          ),
    );
  }
}
