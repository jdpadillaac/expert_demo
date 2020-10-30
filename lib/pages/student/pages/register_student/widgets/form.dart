import 'package:demo/api/student_provider.dart';
import 'package:demo/constants.dart';
import 'package:demo/models/request/register_student.dart';
import 'package:demo/pages/student/pages/login_student.dart';
import 'package:demo/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
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
  final TextEditingController _phone = TextEditingController();

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
            _phoneInput(),
            _registerButon(context)
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
      validator: (val) {
        if (val.isEmpty) return 'El nombre es requerido';
        if (val.length < 3) return 'Debe tener como minimo tres caracteres';
        return null;
      },
    );
  }

  TextFormField _suerNamesInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: _surenames,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: 'Apellidos',
      ),
      validator: (val) {
        if (val.isEmpty) return 'El nombre es requerido';
        if (val.length < 3) return 'Debe tener como minimo tres caracteres';
        return null;
      },
    );
  }

  TextFormField _emailInput() {
    return TextFormField(
      controller: _email,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
      ),
      validator: (val) {
        if (val.isEmpty) return 'Debe enviar un email válido';
        RegExp regExp = RegExp(emailPattern);
        if (!regExp.hasMatch(val)) return 'Debe enviar un email válido';
        return null;
      },
    );
  }

  TextFormField _passwordInput() {
    return TextFormField(
      controller: _password,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        hintText: 'Contraseña',
      ),
      validator: (val) {
        if (val.isEmpty) return 'El nombre es requerido';
        if (val.length < 5) return 'Debe tener como minimo tres caracteres';
        return null;
      },
    );
  }

  TextFormField _phoneInput() {
    return TextFormField(
      controller: _phone,
      keyboardType: TextInputType.phone,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Teléfono',
        prefixIcon: Icon(Icons.phone),
      ),
      validator: (val) {
        if (val.isEmpty) return 'El nombre es requerido';
        if (val.length < 7) return 'Debe tener como minimo tres caracteres';
        return null;
      },
    );
  }

  Padding _registerButon(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: InkWell(
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
          ),
        ),
        onTap: () async {
          if (_form.currentState.validate()) {
            final formData = RegisterStudentRequest(
              name: _email.text,
              fullName: _surenames.text,
              mail: _email.text,
              password: _password.text,
              phone: _phone.text,
              role: 'E',
            );
            final registerStudent = StudentApiProvider();
            final bool resp = await registerStudent.save(formData, context);
            if (resp == true) {
              Navigator.pop(context, LoginStudent.routeName);
            }
          }
        },
      ),
    );
  }
}
