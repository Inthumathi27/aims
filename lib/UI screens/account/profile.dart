import 'dart:convert';

import 'package:aims/model/login/login.dart';
import 'package:aims/utils/api_constants.dart';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/button.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  LoginResponse? loginResponse;
  bool isloading = false;
  String logData = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdat();
  }

  getdat() async {
    setState(() {
      isloading = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    logData = prefs.getString("loginResponse").toString();
    loginResponse = LoginResponse.fromJson(jsonDecode(logData));
    setState(() {
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color:Color(0xFF0e969c)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: SmallText(text: MyStrings.profile,color: Colors.grey,size: 20,fontWeight: FontWeight.w600,),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(225),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: primaryColor,
                minRadius: 44.0,
                child:  CircleAvatar(
                  backgroundColor: Color(0xfffafafa),
                  minRadius: 42.0,
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                    loginResponse!.value!.userPersonalInfo!.profileImgUrl == null ? const AssetImage(
                      'assets/dummyimage/image1.png',
                    )as ImageProvider :
                    NetworkImage('${loginResponse!.value!.userPersonalInfo!.profileImgUrl}'
                        // '${ApiConstants.loginURL}${loginResponse!.value!.userPersonalInfo!.userId}/token=1a32e71a46317b9cc6feb7388238c95d${loginResponse!.value!.userPersonalInfo!.profileImgUrl}'
                    ),
                  ),
                ),
              ),
              heightspace,
              SmallText(
                text: '${loginResponse!.value!.userPersonalInfo!.firstName.toString()} ${loginResponse!.value!.userPersonalInfo!.lastName.toString()}  ${loginResponse!.value!.userPersonalInfo!.initial.toString()}',
                color: primaryColor,
                size: 24,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 5,),
              SmallText(
                text: loginResponse!.value!.userInfo!.designation!.designation.toString(),
                size: 16,
                color: profileTextColor,
                fontStyle: FontStyle.italic,
              ),
              heightspace,
              heightspace,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,8,20,8.0),
                  child: SmallText(
                    text: loginResponse!.value!.userInfo!.empId
                        .toString(),
                    size: 15,
                    color: whiteColor,

                  ),
                ),
              ),
              heightspace,
              heightspace,
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(color:profileTextColor.withOpacity(0.1),width: MediaQuery.of(context).size.width,height: 1,),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightspace,
              // Row(
              //   children: [
              //     Image.asset(
              //       'assets/profile/people.png',
              //       width: 30,
              //       height: 20,
              //       // color: Color(0xff6e6d72),
              //     ),
              //     widthspace,
              //     SmallText(
              //       text: MyStrings.personal_Information,
              //       size: 17,
              //       fontWeight: FontWeight.w500,
              //       color: primaryColor,
              //       fontStyle: FontStyle.italic,
              //     ),
              //   ],
              // ),
              // heightspace,
              Container(
                height: MediaQuery.of(context).size.height / 1.9,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 15, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.department,
                            size: 15,
                            color: textGreyColor,
                          ),
                          SizedBox(
                            width: 88,
                          ),
                          SmallText(
                            text: loginResponse!.value!.userPersonalInfo!.department!.name.toString(),
                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.dateOfBirth ,
                            size: 15,
                            color: textGreyColor,
                          ),
                          const SizedBox(
                            width: 83,
                          ),
                          SmallText(
                            text:
                                loginResponse!.value!.userInfo!.dob.toString(),

                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.dateOfJoining ,
                            size: 15,
                            color: textGreyColor,
                          ),
                          const SizedBox(
                            width: 65,
                          ),
                          SmallText(
                            text: loginResponse!.value!.userInfo!.doj.toString(),
                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.gender,
                            size: 15,
                            color: textGreyColor,
                          ),
                          const SizedBox(
                            width: 125,
                          ),
                          SmallText(
                            text: loginResponse!.value!.userPersonalInfo!.gender
                                .toString(),

                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.email,
                            size: 15,
                            color: textGreyColor,
                          ),
                          const SizedBox(
                            width: 118,
                          ),
                          SmallText(
                            text: loginResponse!.value!.userInfo!.email
                                .toString(),

                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.contactNo,
                            size: 15,
                            color: textGreyColor,
                          ),
                          const SizedBox(
                            width: 95,
                          ),
                          SmallText(
                            text: loginResponse!.value!.userInfo!.contactNo.toString(),

                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.emergencyContact,
                            color: textGreyColor,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 31,
                          ),
                          SmallText(
                            text: loginResponse!
                                .value!.userPersonalInfo!.emergencyContactPerson
                                .toString(),

                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Row(
                        children: [
                          SmallText(
                            text: MyStrings.emergencyPhone,
                            color: textGreyColor,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 41,
                          ),
                          SmallText(
                            text: loginResponse!
                                .value!.userPersonalInfo!.emergencyContactNo
                                .toString(),


                            size: 15,
                          ),
                        ],
                      ),
                      heightspace,
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                            text:'Address',
                            color: textGreyColor,
                            size: 15,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SmallText(
                            text:'${loginResponse!.value!.userPersonalInfo!.addressLine1} ${loginResponse!.value!.userPersonalInfo!.addressLine2}, ${loginResponse!.value!.userPersonalInfo!.permanentState}, ${loginResponse!.value!.userPersonalInfo!.permanentCity}, ${loginResponse!.value!.userPersonalInfo!.permanentPincode}'
                                .toString(),
                                // '${loginResponse!.value!.userPersonalInfo!.commAddress1.toString()}${loginResponse!.value!.userPersonalInfo!.commCity}, ${loginResponse!.value!.userPersonalInfo!.commState}, ${loginResponse!.value!.userPersonalInfo!.commPincode}',
                            size: 15,
                            height: 1.4,
                          ),
                        ],
                      ),
                      heightspace,

                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(

                        backgroundColor: whiteColor,
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10,vertical: 15 ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context).viewInsets.bottom),
                                  child:  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10.0),

                                          ),
                                          child:  TextField(
                                            style: TextStyle(fontSize: 14,color: Color(0xff575656)),
                                            maxLines: null,
                                            keyboardType: TextInputType.multiline,
                                            cursorColor: const Color(0xFF0e969c),
                                            decoration:  InputDecoration(
                                              filled: true,
                                              fillColor: const Color(0xffc7c6c6).withOpacity(0.3),
                                              border: InputBorder.none,

                                              hintText: "Type here",
                                              hintStyle: const TextStyle(fontSize: 14,color: Color(0xff575656),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      Container(
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: const BoxDecoration(
                                            color: Color(0xFF00BFA5), shape: BoxShape.circle),
                                        child: Icon(Icons.send,color: whiteColor,),
                                      )
                                    ],
                                  ),


                                ),

                              ],
                            ),
                          ),
                        )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/profile/bubblechat.png',
                          width: 25,height: 25,
                        ),
                        widthspace,
                        SmallText(
                          text: MyStrings.support,
                          color: primaryColor,
                          size: 14,
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
