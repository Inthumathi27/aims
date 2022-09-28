import 'package:aims/UI%20screens/loginScreen/loginpage.dart';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/button.dart';
import 'package:aims/widgets/custompath.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:aims/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> with SingleTickerProviderStateMixin {
  double? _scale;
  AnimationController? _controller;

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
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller!.value;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: loginColor,
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.keyboard_arrow_left_sharp,
                                color: whiteColor,
                                size: 30,
                              )),
                          SizedBox(
                            height: 80,
                          ),
                          SmallText(
                            text: MyStrings.forgotPassword,
                            size: 28,
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                          heightspace,
                          heightspace,
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SmallText(
                              text: MyStrings.instruction,
                              color: whiteColor,
                              size: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.53,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          InputTextfield(
                            text: MyStrings.employeeId,
                            icon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                          ),
                          heightspace,
                          heightspace,
                          InputTextfield(
                            text: MyStrings.email,
                            icon: Icon(
                              Icons.email,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => _buildPopupDialog(context),
                              );
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
                                  text: MyStrings.submit,
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
                top: MediaQuery.of(context).size.height / 2.91,
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
  Widget _buildPopupDialog(BuildContext context) {
    return  AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      content: Builder(
        builder: (context) {
          return Container(
              height: 130,

              width: MediaQuery.of(context).size.width/3,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/forgot/sucess.gif',width: 75,height: 75,),
                  heightspace,
                  SmallText(text: MyStrings.resetmessage,textAlign: TextAlign.center,),
                ],
              ));
        }
      ),
      actions: <Widget>[
        InkWell(
          onTap: (){
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => LoginScreen()),
                    (Route<dynamic> route) => false);
          },
          child: Center(child: Padding(
            padding: const EdgeInsets.only(bottom:35.0),
            child: SmallText(text: MyStrings.ok.toUpperCase(),color: primaryColor,size: 15,fontWeight: FontWeight.w600,),
          )),
        ),
      ],
    );
  }
}
