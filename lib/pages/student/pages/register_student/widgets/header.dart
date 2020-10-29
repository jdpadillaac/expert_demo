import 'package:demo/pages/student/pages/login_student.dart';
import 'package:demo/widgets/constants.dart';
import 'package:flutter/material.dart';

class RegisterStudentHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Container(
            color: AppColors.primary,
          ),
        ),
        Container(
          width: double.infinity,
          height: 170,
          color: AppColors.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 5),
              _backButon(context),
              _headerText(),
            ],
          ),
        )
      ],
    );
  }

  Padding _headerText() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(height: 10),
          Text(
            'Registrate',
            style: TextStyle(color: Colors.white, fontSize: 35),
          )
        ],
      ),
    );
  }

  InkWell _backButon(BuildContext context) {
    return InkWell(
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 40,
      ),
      onTap: () {
        Navigator.pop(context, LoginStudent.routeName);
      },
    );
  }
}
