import 'package:flutter/cupertino.dart';

class Dialogs {
  static void alert(
    BuildContext context, {
    String title = '',
    String message = "",
  }) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            content: Text(
              message,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              CupertinoDialogAction(
                child: Text('ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
