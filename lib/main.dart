import 'package:demo/pages/expert/pages/home_expert.dart';
import 'package:demo/pages/expert/pages/login_expert.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/splash_screen.dart';
import 'package:demo/pages/student/pages/loginHome.dart';
import 'package:demo/pages/student/pages/login_student.dart';
import 'package:demo/pages/student/pages/register_student/register_student.dart';
import 'package:demo/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTHeme,
      home: SplashScreen(),
      routes: {
        HomePage.pageName: (_) => HomePage(),
        'LoginStudentPage': (_) => LoginStudent(),
        'LoginExpertPage': (_) => LoginExpert(),
        'homeExpert': (_) => HomeExpertPage(),
        'homeStudent': (_) => HomeStudentPage(),
        RegisterStudentPage.routeName: (_) => RegisterStudentPage()
      },
    );
  }
}
