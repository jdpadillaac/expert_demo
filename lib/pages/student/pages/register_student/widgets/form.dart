import 'package:demo/widgets/constants.dart';
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
          height: 590,
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
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: FormFileds(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Registrar',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                ),
              ],
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
  final TextEditingController _surenames = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController phone = TextEditingController();

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
            _suerNamesInput(),
            SizedBox(height: 15),
            _emailInput(),
            SizedBox(height: 15),
            _passwordInput(),
            SizedBox(height: 15),
            _phoneInput()
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

  TextFormField _suerNamesInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: 'Apellidos',
      ),
    );
  }

  TextFormField _emailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
      ),
    );
  }

  TextFormField _passwordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        hintText: 'Contraseña',
      ),
    );
  }

  TextFormField _phoneInput() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
      ),
    );
  }
}
