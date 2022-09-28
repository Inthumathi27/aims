import 'package:aims/UI%20screens/account/profile.dart';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/smalltext.dart';
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body:InkWell(
        onTap: (){
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: ProfileScreen()));
        },
        child: Column(
          children: [
            Icon(Icons.account_circle_outlined,size: 100,color: bluegreyColor,),
            SmallText(text: MyStrings.profile,size: 18,)
          ],
        ),
      ),
    );
  }
}
