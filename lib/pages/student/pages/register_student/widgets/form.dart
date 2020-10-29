import 'package:flutter/material.dart';

class RegisterStudentForm extends StatelessWidget {
  const RegisterStudentForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Container(
              width: double.infinity,
              // color: Colors.red,
              child: FormFileds(),
            ),
          ),
        ),
      ),
    );
  }
}

class FormFileds extends StatefulWidget {
  const FormFileds({
    Key key,
  }) : super(key: key);

  @override
  _FormFiledsState createState() => _FormFiledsState();
}

class _FormFiledsState extends State<FormFileds> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _names = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            _nameInput(),
            SizedBox(height: 15),
            _fullNameInput()
          ],
        ),
      ),
    );
  }

  TextFormField _nameInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: _names,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.list),
        hintText: 'Nombres',
      ),
    );
  }

  TextFormField _fullNameInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.list),
        hintText: 'Apellidos',
      ),
    );
  }
}
