import 'package:demo/managers/http_manager.dart';
import 'package:demo/managers/session_manager.dart';
import 'package:demo/managers/token_maganer.dart';
<<<<<<< HEAD
import 'package:demo/models/login_model.dart';
import 'package:demo/models/user_model.dart';
import 'package:demo/widgets/dialogs.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider {
=======
import 'package:demo/models/request/login_request.dart';
import 'package:demo/models/user_entity.dart';
import 'package:demo/widgets/dialogs.dart';
import 'package:flutter/material.dart';

class AuthApiProvider {
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
  final HttpManager httpManager = HttpManager();

  Future<bool> loginStudent(
    BuildContext context,
    LoginRequest loginRequest,
  ) async {
<<<<<<< HEAD
    try {
      final responseData =
          await httpManager.post('auth/login', loginRequest.toJson());

      final String token = responseData['token'];

      final user = UserModel.fromJson(responseData['data']);
      if (user.role == 'U') {
=======
    try{
      final responseData = await httpManager.post('auth/login', loginRequest.toJson());
      final token = responseData['token'] as String;
      final user = UserEntity.fromJson(responseData['data']);
      
      if(user.role == 'U'){
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
        await TokenManager.getInstance().setToken(token);
        final session = await SessionManager.getIntance();
        await session.setUserId(user.id);
        await session.setRole(user.role);
        return true;
<<<<<<< HEAD
      } else {
        Dialogs.alert(
          context,
          title: 'Error',
          message: 'Espacio permitido solo para estudiantes',
        );
        return false;
      }
    } catch (e) {
      print(e);

      Dialogs.alert(
        context,
        title: 'Error',
        message: 'Usuario no encontrado',
      );
=======
      }else {
        Dialogs.alert(
          context,
          title: 'Error',
          message: 'Tu eres un experto, no un estudiante.',
        );
        return false;
      }
    }catch(error){
      Dialogs.alert(context, title:'Error', message: 'Estudiante no encontrado');
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
      return false;
    }
  }

<<<<<<< HEAD
  // ignore: missing_return
=======
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
  Future<bool> loginExpert(
    BuildContext context,
    LoginRequest loginRequest,
  ) async {
<<<<<<< HEAD
    try {
      print(loginRequest.email);
      print(loginRequest.password);

      final responseData =
          await httpManager.post('auth/login', loginRequest.toJson());
      final String token = responseData['token'];

      final user = UserModel.fromJson(responseData['data']);
      if (user.role == 'U') {
=======
    try{
      final responseData = await httpManager.post('auth/login', loginRequest.toJson());
      final token = responseData['token'] as String;
      final user = UserEntity.fromJson(responseData['data']);

      if(user.role == 'E'){
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
        await TokenManager.getInstance().setToken(token);
        final session = await SessionManager.getIntance();
        await session.setUserId(user.id);
        await session.setRole(user.role);
        return true;
<<<<<<< HEAD
      } else {
        Dialogs.alert(
          context,
          title: 'Error',
          message: 'Espacio permitido solo para expertos',
        );
      }
    } catch (e) {
      print(e);
      Dialogs.alert(
        context,
        title: 'Error',
        message: 'Usuario no encontrado',
      );
      return false;
    }
  }
}
=======
      }else {
        Dialogs.alert(
          context,
          title: 'Error',
          message: 'Tu eres un estudiante, no un experto.',
        );
        return false;
      }
    }catch(error){
      Dialogs.alert(context, title:'Error', message: 'Experto no encontrado');
      return false;
    }
  }
  // TODO: Logout 

}
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
