import 'package:demo/pages/expert/pages/home_expert.dart';
import 'package:demo/pages/expert/pages/login_expert.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/splash_screen.dart';
<<<<<<< HEAD
import 'package:demo/pages/student/pages/loginHome.dart';
=======
import 'package:demo/pages/student/pages/home_expert.dart';
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
import 'package:demo/pages/student/pages/login_student.dart';
import 'package:demo/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTHeme,
      home: SplashScreen(),
      routes: {
<<<<<<< HEAD
        'home': (_) => HomePage(),
        'LoginStudentPage': (_) => LoginStudent(),
        'LoginExpertPage': (_) => LoginExpert(),
        'homeExpert': (_) => HomeExpertPage(),
        'homeStudent': (_) => HomeStudentPage()
=======
        'home' : (_) => HomePage(),
        'LoginStudentPage' : (_) => LoginStudent(),
        'LoginExpertPage' : (_) => LoginExpert(),
        'HomeExpert': (_) => HomeExpert(),
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
      },
    );
  }
}
