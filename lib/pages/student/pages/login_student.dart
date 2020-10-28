import 'package:demo/api/auth_api_provider.dart';
<<<<<<< HEAD
import 'package:demo/models/login_model.dart';
import 'package:demo/pages/student/pages/loginHome.dart';
=======
import 'package:demo/models/request/login_request.dart';
import 'package:demo/pages/student/pages/home_expert.dart';
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
import 'package:flutter/material.dart';

class LoginStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Logo(),
              Formlogin(),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Image(image: AssetImage('assets/programmer.png')),
    );
  }
}

class Formlogin extends StatefulWidget {
  @override
  _FormloginState createState() => _FormloginState();
}

class _FormloginState extends State<Formlogin> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _pass = TextEditingController();

  bool isBussy = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Container(
        constraints: BoxConstraints(maxWidth: 300, minWidth: 300),
<<<<<<< HEAD
        child: Column(children: [
          SizedBox(height: 40),
          _headerText(),
          SizedBox(height: 30),
          _emailInput(),
          SizedBox(height: 10),
          _passwordInput(),
          SizedBox(height: 30),
          _siginButtom()
        ]),
      ),
    );
  }

  Text _headerText() {
    return Text(
      'Iniciar sesion - Estudiante',
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
    );
  }

  TextFormField _emailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: _email,
      validator: (val) {
        if (val.isEmpty) return 'Este campo es requerido';
        return null;
      },
      decoration: InputDecoration(
        hintText: 'CORREO',
        prefixIcon: Icon(Icons.email),
      ),
    );
  }

  InkWell _siginButtom() {
    return InkWell(
      onTap: () async {
        if (_form.currentState.validate()) {
          final auth = AuthProvider();
          final request = LoginRequest(
            email: _email.text,
            password: _pass.text,
          );

          final bool success = await auth.loginStudent(context, request);
          if (success) {
            Navigator.pushNamed(context, HomeStudentPage.routename);
          }
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Text(
          'Ingresar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
=======
        child: Column(
          children: [
            SizedBox(height:40),
            Text('Iniciar sesion - Estudiante', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
            SizedBox(height:30),
            TextFormField(
              controller: _email,
              validator: (val) {
                if (val.isEmpty) return 'Este campo es requerido';
                return null; 
              },
              decoration:  InputDecoration(hintText: 'CORREO'),
            ),
            TextFormField(
              controller: _pass,
              obscureText: true,
              validator: (val) {
                if (val.isEmpty) return 'Este campo es requerido';
                return null; 
              },
              decoration:  InputDecoration(hintText: 'CONTRASEñA'),
            ),
            SizedBox(height:30),
            InkWell(
              onTap: () async {
                if(_form.currentState.validate()) {
                   setState(() {
                     isBussy = true;
                  });
                  final auth = AuthApiProvider();
                  final request = LoginRequest(
                    email: _email.text,
                    password: _pass.text
                  );
                  final success = await auth.loginStudent(context, request);
                  setState(() {
                    isBussy = false;
                  });
                  if(success){
                    Navigator.pushAndRemoveUntil(context,
                       MaterialPageRoute(builder: (context) => HomeExpert()),
                       (Route<dynamic> route) => false);
                  }else{
                    return null;
                  }
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green
                ),
                child: isBussy ? SizedBox(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor: Colors.white,
                  ),
                  height: 20,
                  width: 20,
                ) : Text('Ingresar', 
                style: TextStyle(
                  color: Colors.white, fontSize: 18),),
              ),
            )
          ]
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
        ),
      ),
    );
  }

  TextFormField _passwordInput() {
    return TextFormField(
      controller: _pass,
      obscureText: true,
      validator: (val) {
        if (val.isEmpty) return 'Este campo es requerido';
        return null;
      },
      decoration:
          InputDecoration(hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
    );
  }
}
