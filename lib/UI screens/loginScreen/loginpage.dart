import 'dart:convert';

import 'package:aims/UI%20screens/homepage/homescreen.dart';
import 'package:aims/UI%20screens/loginScreen/forgotpassword.dart';
import 'package:aims/model/login/awardbanner.dart';
import 'package:aims/model/login/login.dart';
import 'package:aims/service/webservice.dart';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/button.dart';
import 'package:aims/widgets/custompath.dart';
import 'package:aims/widgets/gradienttext.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:aims/widgets/textfield.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  bool isPasswordVisible = true;
  double? _scale;
  AnimationController? _controller;
  TextEditingController employeeId = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late LoginResponse loginResponse;
  // AwardBanner? awardBanner;
  bool isloading = false;
  String awarddata = "";


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    );
    _controller!.addListener(() {
      setState(() {});
    });
     // awardBanner =AwardBanner.fromJson(jsonDecode(awarddata));
    // awardBanner=[] as AwardBanner?;
    // getawarddata();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
  // getawarddata() async {
  //   setState(() {
  //     isloading = true;
  //   });
  //   Webservice().fetchawarddata().then((onResponse)  async {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     awardBanner = onResponse;
  //     print(awardBanner!.message);
  //     awarddata = prefs.getString("awardBanner").toString();
  //     awardBanner = AwardBanner.fromJson(jsonDecode(awarddata));
  //     // if (onResponse is AwardBanner){
  //     //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //     //   awarddata = prefs.getString("awardBanner").toString();
  //     //   awardBanner = AwardBanner.fromJson(jsonDecode(awarddata));
  //     //   setState(() {
  //     //     isloading = false;
  //     //   });
  //     // }
  //   });
  //   setState(() {
  //     isloading = false;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller!.value;
    int _currentIndex = 0;
    List cardList = [
    ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 4.5,
// padding: EdgeInsets.only(
//     left: 0, top: 40 + 20, right: 0, bottom: 20),
              margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: whiteColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallText(
                              text: "AM034",
                              size: 15,
                            ),
                            heightspace,
                            SizedBox(
                              height: 5,
                            ),
                            GradientText(
                              "Mytest test",
                              // awardBanner!.value!.first.awards!.first.userData!.userName.toString(),
                              style: font18.copyWith(fontWeight: FontWeight.w600),
                              gradient: LinearGradient(colors: [
                                buttonColor,
                                primaryColor,
                              ]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SmallText(
                              text: MyStrings.department,
                              size: 14,
                              color: bluegreyColor,
                              fontStyle: FontStyle.italic,
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/login/EM-01.png',
                          width: 130,
                          height: 130,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: SmallText(
                        text: "Best Starter of the Month",
                        size: 20,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      // Item2(),
      // Item3(),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: loginColor,
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height / 2.5,
                        disableCenter: false,
                        viewportFraction: 1,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 10),
                        autoPlayAnimationDuration: Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 3.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: cardList.map((card) {
                        return Builder(builder: (BuildContext context) {
                          return card;
                        });
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            MyStrings.login,
                            style: font30.copyWith(
                                color: primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          // TextField(
                          //   controller:employeeId,
                          //   decoration: InputDecoration(
                          //     filled: true,
                          //     fillColor: TextFieldBgColor,
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide.none,
                          //     ),
                          //     hintText:MyStrings.employeeId,
                          //     suffixIcon:Icon(
                          //       Icons.person,
                          //       color: primaryColor,
                          //     ),
                          //   ),
                          // ),
                          InputTextfield(
                            text: MyStrings.employeeId,
                            controller: employeeId,
                            fillColor: TextFieldBgColor,
                            icon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                          ),
                          heightspace,
                          heightspace,
                          TextField(
                            obscureText: isPasswordVisible,
                            controller: passwordController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldBgColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Password",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: primaryColor,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                          heightspace,
                          heightspace,
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: ForgotPassword()));
                            },
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: SmallText(
                                  text: MyStrings.forgot,
                                )),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const HomeScreen()));
                              // _loginWithPassword(employeeId.text,passwordController.text);
                            },
                            child: Listener(
                              onPointerDown: (PointerDownEvent event) {
                                _controller!.forward();
                              },
                              onPointerUp: (PointerUpEvent event) {
                                _controller!.reverse();
                              },
                              child: Transform.scale(
                                scale: _scale!,
                                child: Button(
                                  text: MyStrings.login,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.51,
                left: 15,
                child: ClipPath(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: 25,
                    color: loginColor,
                  ),
                  clipper: CustomClipPath(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _loginWithPassword(String emp_id, String password) async {
    // LoaderScreen();
   // networkStatus().then((isReachable) {
     // if (isReachable!) {
        // showLoaderDialog(context);
        Webservice()
            .callLoginWithPasswordService(
             password: password, emp_id: emp_id)
            .then((onResponse) async {
          // if (onResponse![SUCCESS] == TRUE) {
            print(onResponse);
            loginResponse = onResponse;
            print(loginResponse.message);
            if(loginResponse.message=="success"){
              SharedPreferences prefs = await SharedPreferences.getInstance();
              // var log = jsonEncode(loginResponse.toJson());
              // print(loginResponse.value!.userInfo!.userName.toString());
              // prefs.setString("username",loginResponse.value!.userInfo!.userName.toString());
              // prefs.setString("empID",loginResponse.value!.userInfo!.empId.toString());
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: HomeScreen()));
            }
            else if(loginResponse.message=="Bad Request")
              {
                // _showMyDialog();
                Fluttertoast.showToast(
                    msg: MyStrings.validId);
              print(loginResponse.message);
              }
            else{
              print("500 error");
            }
        });
      }

}

// class Item1 extends StatelessWidget {
//   const Item1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(
//             child: Container(
//               width: MediaQuery.of(context).size.width / 1.1,
//               height: MediaQuery.of(context).size.height / 4.5,
// // padding: EdgeInsets.only(
// //     left: 0, top: 40 + 20, right: 0, bottom: 20),
//               margin: EdgeInsets.only(top: 90),
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 color: whiteColor.withOpacity(0.9),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 12.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SmallText(
//                               text: "AM034",
//                               size: 15,
//                             ),
//                             heightspace,
//                             SizedBox(
//                               height: 5,
//                             ),
//                             GradientText(
//                               'Faina Josephine',
//                               style: font18.copyWith(fontWeight: FontWeight.w600),
//                               gradient: LinearGradient(colors: [
//                                 buttonColor,
//                                 primaryColor,
//                               ]),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             SmallText(
//                               text: MyStrings.department,
//                               size: 14,
//                               color: bluegreyColor,
//                               fontStyle: FontStyle.italic,
//                             ),
//                           ],
//                         ),
//                         Image.asset(
//                           'assets/login/EM-01.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 12.0),
//                       child: SmallText(
//                         text: "Best Starter of the Month",
//                         size: 20,
//                         textAlign: TextAlign.center,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }

//
// class Item2 extends StatelessWidget {
//   const Item2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: MediaQuery.of(context).size.width / 1.1,
//         height: MediaQuery.of(context).size.height / 4.5,
//         // padding: EdgeInsets.only(
//         //     left: 0, top: 40 + 20, right: 0, bottom: 20),
//         margin: EdgeInsets.only(top: 90),
//         decoration: BoxDecoration(
//           shape: BoxShape.rectangle,
//           color: whiteColor.withOpacity(0.9),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 12.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SmallText(
//                         text: "AM034",
//                         size: 15,
//                       ),
//                       heightspace,
//                       SizedBox(
//                         height: 5,
//                       ),
//                       GradientText(
//                         'Faina Josephine',
//                         style: font18.copyWith(fontWeight: FontWeight.w600),
//                         gradient: LinearGradient(colors: [
//                           buttonColor,
//                           primaryColor,
//                         ]),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       SmallText(
//                         text: MyStrings.department,
//                         size: 14,
//                         color: bluegreyColor,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ],
//                   ),
//                   Image.asset(
//                     'assets/login/EM-01.png',
//                     width: 130,
//                     height: 130,
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 12.0),
//                 child: SmallText(
//                   text: "Best Starter of the Month",
//                   size: 20,
//                   textAlign: TextAlign.center,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Item3 extends StatelessWidget {
//   const Item3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Center(
//           child: Container(
//             width: MediaQuery.of(context).size.width / 1.1,
//             height: MediaQuery.of(context).size.height / 4.5,
//             // padding: EdgeInsets.only(
//             //     left: 0, top: 40 + 20, right: 0, bottom: 20),
//             margin: EdgeInsets.only(top: 90),
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: whiteColor.withOpacity(0.9),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 12.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SmallText(
//                             text: "AM034",
//                             size: 15,
//                           ),
//                           heightspace,
//                           SizedBox(
//                             height: 5,
//                           ),
//                           GradientText(
//                             'Faina Josephine',
//                             style: font18.copyWith(fontWeight: FontWeight.w600),
//                             gradient: LinearGradient(colors: [
//                               buttonColor,
//                               primaryColor,
//                             ]),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           SmallText(
//                             text: MyStrings.department,
//                             size: 14,
//                             color: bluegreyColor,
//                             fontStyle: FontStyle.italic,
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         'assets/login/EM-01.png',
//                         width: 130,
//                         height: 130,
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 12.0),
//                     child: SmallText(
//                       text: "Best Starter of the Month",
//                       size: 20,
//                       textAlign: TextAlign.center,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         // Positioned(
//         //   left: 40,
//         //   top: 40,
//         //   right: 50,
//         //   child: CircleAvatar(
//         //     backgroundColor: loginColor,
//         //     minRadius: 58.0,
//         //     child: const CircleAvatar(
//         //         radius: 50.0,
//         //         backgroundImage: AssetImage(
//         //           'assets/dummyimage/image1.jpg',
//         //         )),
//         //   ),
//         // ),
//       ],
//     );
//   }
// }
