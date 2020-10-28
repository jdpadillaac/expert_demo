import 'package:flutter/material.dart';

class HomeExpertPage extends StatelessWidget {
  static final String routename = 'homeExpert';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home expert'),
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
