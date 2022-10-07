import 'package:aims/UI%20screens/account/profile.dart';
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
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(
          'assets/login/loginlogo.png',
          width:150,
          height:150,
          // height: 300,
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(CupertinoPageRoute(
                  builder: (context) => LoginScreen()

              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Icon(Icons.logout),
            ),
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body:DoubleBackToCloseApp(
        
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
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: ProfilePage()));
          },
          child: Column(
            children: [
              Icon(Icons.account_circle_outlined,size: 100,color: bluegreyColor,),
              SmallText(text: MyStrings.profile,size: 18,)
            ],
          ),
        ),
      ),
    );
  }
}
