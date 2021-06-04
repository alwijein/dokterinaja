import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Alert exitAlert(BuildContext context) {
  return Alert(
    context: context,
    type: AlertType.warning,
    title: "KELUAR",
    desc: "Apakah Anda Yakin Ingin Keluar?",
    buttons: [
      DialogButton(
        child: Text(
          "Iye",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        color: Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        child: Text(
          "Tidak",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
      )
    ],
  );
}
