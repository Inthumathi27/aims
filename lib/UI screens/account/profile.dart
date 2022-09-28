import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:aims/widgets/textfieldshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: loginColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  color: loginColor,
                  height: MediaQuery.of(context).size.height / 4.2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SmallText(
                        text: "Faina Josephine",
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        size: 20,
                      ),
                      heightspace,
                      SmallText(
                        text: "Designation",
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                        text: MyStrings.department,
                        size: 15,
                        color: whiteColor,
                        fontStyle: FontStyle.italic,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 125,
                  right: 50,
                  child: CircleAvatar(
                    backgroundColor: bgColor,
                    minRadius: 65.0,
                    child: const CircleAvatar(
                      radius: 58.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/dummyimage/image1.png',
                      ),
                      // child: !kIsWeb &&
                      //         defaultTargetPlatform == TargetPlatform.android
                      //     ? FutureBuilder<void>(
                      //         future: retrieveLostData(),
                      //         builder: (BuildContext context,
                      //             AsyncSnapshot<void> snapshot) {
                      //           switch (snapshot.connectionState) {
                      //             case ConnectionState.none:
                      //             case ConnectionState.waiting:
                      //               return Image.asset(
                      //                 'assets/dummyimage/image1.jpg',
                      //               );
                      //             case ConnectionState.done:
                      //               return _handlePreview();
                      //             default:
                      //               if (snapshot.hasError) {
                      //                 return Text(
                      //                   'Pick image/video error: ${snapshot.error}}',
                      //                   textAlign: TextAlign.center,
                      //                 );
                      //               } else {
                      //                 return Image.asset(
                      //                   'assets/dummyimage/image1.jpg',
                      //                 );
                      //               }
                      //           }
                      //         },
                      //       )
                      //     : SizedBox(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 275, 12, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/profile/people.png',
                            width: 30,
                            height: 20,
                          ),
                          widthspace,
                          SmallText(
                            text: MyStrings.personal_Information,
                            size: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      heightspace,
                      Container(
                        color: textGreyColor.withOpacity(0.2),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                      ),
                      heightspace,
                      SmallText(
                        text: MyStrings.Personal_details,
                        size: 16,
                        fontStyle: FontStyle.italic,
                        color: bluegreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                      heightspace,
                      heightspace,
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: SmallText(text: MyStrings.employeeId)),
                          const Flexible(
                            flex: 2,
                            fit: FlexFit.loose,
                            child: OutputTextfield(
                              text: MyStrings.employeeId,
                            ),
                          ),
                        ],
                      ),
                      heightspace,
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: SmallText(text: MyStrings.last_Name)),
                          const Flexible(
                            flex: 2,
                            fit: FlexFit.loose,
                            child: OutputTextfield(
                              text: MyStrings.employeeId,
                            ),
                          ),
                        ],
                      ),
                      heightspace,
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: SmallText(text: MyStrings.first_name)),
                          const Flexible(
                            flex: 2,
                            fit: FlexFit.loose,
                            child: OutputTextfield(
                              text: MyStrings.employeeId,
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Image.asset(
                      //       'assets/profile/medal.png',
                      //       width: 30,
                      //       height: 20,
                      //     ),
                      //
                      //     widthspace,
                      //     SmallText(text: MyStrings.professional_details,size: 17,fontWeight: FontWeight.w500,),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
