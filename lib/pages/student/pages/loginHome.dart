import 'package:demo/managers/token_maganer.dart';
import 'package:demo/pages/student/pages/login_student.dart';
import 'package:flutter/material.dart';

class HomeStudentPage extends StatelessWidget {
  static final String routename = 'homeStudent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil estudiante'),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () async {
              await TokenManager.getInstance().cleanToken();
              Navigator.pushReplacementNamed(context, LoginStudent.routeName);
            },
            child: Text('Cerrar sesión'),
          ),
        ],
      ),
    );
  }
}
