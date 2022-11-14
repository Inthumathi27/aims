import 'package:aims/UI%20screens/Splash%20Screen/splashscreen.dart';
import 'package:aims/UI%20screens/leave/applyleave.dart';
import 'package:aims/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AIMS',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor:  Color(0xFF0e969c ),),
          primaryColor: primaryColor, textSelectionTheme: TextSelectionThemeData(cursorColor: primaryColor),
      ),
      home: SplashScreen(),
      routes: {
        '/applyleave': (context) => const ApplyLeave(),


      },
    );
  }
}
