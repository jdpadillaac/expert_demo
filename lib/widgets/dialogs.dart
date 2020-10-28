import 'package:flutter/cupertino.dart';

class Dialogs {
  static void alert(
<<<<<<< HEAD
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
=======
    BuildContext ctx,
    {String title = "", String message = ""}
  ){
    showCupertinoDialog(context: ctx, builder: (BuildContext context){
      return CupertinoAlertDialog(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        content: Text(message, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),),
        actions: [
          CupertinoDialogAction(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('OK'),
            )
        ],
      );
    });
  }
}
>>>>>>> b49ad72a33c1b53835a105fe509bafc9feefc3a2
