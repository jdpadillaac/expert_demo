import 'package:demo/managers/http_manager.dart';
import 'package:demo/managers/session_manager.dart';
import 'package:demo/managers/token_maganer.dart';
import 'package:demo/models/login_model.dart';
import 'package:demo/models/user_model.dart';
import 'package:demo/widgets/dialogs.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider {
  final HttpManager httpManager = HttpManager();

  Future<bool> loginStudent(
    BuildContext context,
    LoginRequest loginRequest,
  ) async {
    try {
      final responseData =
          await httpManager.post('auth/login', loginRequest.toJson());

      final String token = responseData['token'];

      final user = UserModel.fromJson(responseData['data']);
      if (user.role == 'U') {
        await TokenManager.getInstance().setToken(token);
        final session = await SessionManager.getIntance();
        await session.setUserId(user.id);
        await session.setRole(user.role);
        return true;
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
      return false;
    }
  }

  // ignore: missing_return
  Future<bool> loginExpert(
    BuildContext context,
    LoginRequest loginRequest,
  ) async {
    try {
      print(loginRequest.email);
      print(loginRequest.password);

      final responseData =
          await httpManager.post('auth/login', loginRequest.toJson());
      final String token = responseData['token'];

      final user = UserModel.fromJson(responseData['data']);
      if (user.role == 'U') {
        await TokenManager.getInstance().setToken(token);
        final session = await SessionManager.getIntance();
        await session.setUserId(user.id);
        await session.setRole(user.role);
        return true;
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
