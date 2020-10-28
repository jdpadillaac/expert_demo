import 'package:flutter/material.dart';

class HomeStudentPage extends StatelessWidget {
  static final String routename = 'homeStudent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student expert'),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {},
            child: Text('Cerrar sesión'),
          ),
        ],
      ),
    );
  }
}
