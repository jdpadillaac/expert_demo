import 'package:demo/pages/student/pages/register_student/widgets/form.dart';
import 'package:demo/pages/student/pages/register_student/widgets/header.dart';
import 'package:demo/widgets/constants.dart';
import 'package:flutter/material.dart';

class RegisterStudentPage extends StatelessWidget {
  static String routeName = 'registerStudent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          RegisterStudentHeader(),
          RegisterStudentForm(),
        ],
      ),
    );
  }
}
