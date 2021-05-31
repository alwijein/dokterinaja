import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/components/body.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';

class ListScreenDokter extends StatelessWidget {
  static String routeName = "/listscreendokter";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Body(),
    );
  }
}
