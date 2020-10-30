import 'package:demo/app_config.dart';
import 'package:demo/managers/http_manager.dart';
import 'package:demo/models/request/register_student.dart';
import 'package:demo/widgets/dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

class StudentApiProvider {
  final HttpManager httpManager = HttpManager();

  Future<bool> save(RegisterStudentRequest data, BuildContext context) async {
    try {
      Dio dio = Dio();
      FormData formData = FormData.fromMap(data.toJson());
      final resp = await dio.post(
        AppConfig.API_URL + 'auth/register',
        data: formData,
      );
      print(resp);
      return true;
    } catch (e) {
      Dialogs.alert(context, title: 'Error en registro');
      return false;
    }
  }
}
